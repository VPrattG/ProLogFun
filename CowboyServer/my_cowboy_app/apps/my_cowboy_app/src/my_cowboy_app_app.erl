%% --------------------------------------------------------------
%% Módulo: my_cowboy_app_app
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este módulo es donde se indica que módulo se llamara
%% según la ruta.
%%
%%
%% Fecha: 27 de septiembre de 2024
%% --------------------------------------------------------------
-module(my_cowboy_app_app).
-behaviour(application).

%% Exportar funciones de inicio y parada
-export([start/2, stop/1]).

%% Iniciar la aplicación
start(_Type, _Args) ->
    %% Definir las rutas
    Dispatch = cowboy_router:compile([
        {'_', [
            %% Por el momento, ambas rutas se manejan desde un mismo archivo, pero podrían usarse varias funciones
            {"/", my_cowboy_handler, []},
            {"/saludo", my_cowboy_handler, []}
        ]}
    ]),
    %% Iniciar Cowboy en el puerto 8080
    {ok, _} = cowboy:start_clear(
        http_listener,
        [{port, 8080}],
        #{env => #{dispatch => Dispatch}}
    ),
    my_cowboy_app_sup:start_link().

%% Detener la aplicación
stop(_State) ->
    ok.
