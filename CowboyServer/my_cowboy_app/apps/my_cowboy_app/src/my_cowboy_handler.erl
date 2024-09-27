-module(my_cowboy_handler).
-export([init/2]).

init(Req0, State) ->
    io:format("Request: ~p~n", [Req0]),  %% Imprimir el Request para depuración
    Method = cowboy_req:method(Req0),
    Path = cowboy_req:path(Req0),
    {ok, handle_request(Method, Path, Req0), State}.

handle_request(<<"GET">>, <<"/saludo">>, Req) ->
    handle_saludo(Req);
handle_request(<<"GET">>, <<"/favicon.ico">>, Req) ->
    %% Manejar solicitudes de favicon.ico (común en navegadores)
    cowboy_req:reply(204, Req);
handle_request(_, _, Req) ->
    handle_default(Req).

%% Manejador para la ruta por defecto
handle_default(Req) ->
    cowboy_req:reply(200,
        #{<<"content-type">> => <<"text/plain">>},
        <<"Hola Mundo desde Cowboy!">>,
        Req).

%% Manejador para la ruta /saludo
handle_saludo(Req) ->
    %% Extraer los parámetros de la consulta
    QS = cowboy_req:parse_qs(Req),
    
    %% Buscar el valor del parámetro 'nombre'
    case proplists:get_value(<<"nombre">>, QS) of
        undefined ->
            %% Si no se proporciona el nombre, devolver un error 400
            cowboy_req:reply(400,
                #{<<"content-type">> => <<"text/plain">>},
                <<"Error: parámetro 'nombre' no proporcionado">>,
                Req);
        Nombre ->
            %% Construir el saludo personalizado
            Saludo = <<"¡Hola, ", Nombre/binary, "!">>,
            %% Enviar la respuesta con el saludo
            cowboy_req:reply(200,
                #{<<"content-type">> => <<"text/plain">>},
                Saludo,
                Req)
    end.
