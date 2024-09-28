%% --------------------------------------------------------------
%% Módulo: my_cowboy_handler
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: my_cowboy_handler contiene la información a imprimir
%% al recibir ciertas peticiones en la aplicación web desarrollada.
%% En particular, se tienen funciones para "/" y "/saludo"
%%
%% Fecha: 27 de septiembre de 2024
%% --------------------------------------------------------------

-module(my_cowboy_handler).
-export([init/2]).

init(Req0, State) ->
    %% Imprimir el Request para depuración
    io:format("Request: ~p~n", [Req0]),
    Method = cowboy_req:method(Req0),
    Path = cowboy_req:path(Req0),
    {ok, handle_request(Method, Path, Req0), State}.

handle_request(<<"GET">>, <<"/saludo">>, Req) ->
    %% Si se recibe una petición de saludo, se ejecuta la función para saludar con todo y nombre
    handle_saludo(Req);
handle_request(<<"GET">>, <<"/favicon.ico">>, Req) ->
    %% Manejar solicitudes de favicon.ico (común en navegadores)
    cowboy_req:reply(204, Req);
handle_request(_, _, Req) ->
    %% Por defecto, realizará un simple "hola mundo"
    handle_default(Req).

%% Manejador para la ruta por defecto
handle_default(Req) ->
    cowboy_req:reply(
        200,
        #{<<"content-type">> => <<"text/plain">>},
        <<"Hola Mundo desde Cowboy!">>,
        Req
    ).

%% Manejador para la ruta /saludo
handle_saludo(Req) ->
    %% Extraer los parámetros de la consulta
    QS = cowboy_req:parse_qs(Req),

    %% Buscar el valor del parámetro 'nombre'
    case proplists:get_value(<<"nombre">>, QS) of
        undefined ->
            %% Si no se proporciona el nombre, se devuelve un error 400
            cowboy_req:reply(
                400,
                #{<<"content-type">> => <<"text/plain">>},
                <<"Error: parámetro 'nombre' no proporcionado">>,
                Req
            );
        Nombre ->
            %% Crear el saludo con el nombre
            Saludo = <<"¡Hola, ", Nombre/binary, "!">>,
            %% Enviar la respuesta con el saludo
            cowboy_req:reply(
                200,
                #{<<"content-type">> => <<"text/plain">>},
                Saludo,
                Req
            )
    end.
