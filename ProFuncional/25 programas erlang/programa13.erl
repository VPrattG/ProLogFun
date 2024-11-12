%% --------------------------------------------------------------
%% Módulo: programa13
%% Autor: Van Pratt González Ricardo Adolfo
%% Description: Este programa accede a la llave k de un valor v en
%% un mapa y los imprime
%% Corresponde al ejercicio 13
%%
%% Fecha: 05 de septiembre de 2024
%% --------------------------------------------------------------

-module(programa13).
-export([iterar_mapas/0]).

iterar_mapas() ->
    % Creación del mapa
    MyMap = #{one => 1, "two" => 2.0, <<"three">> => [i, i, i]},
    % Imprime el mapa parte por parte
    maps:fold(
        fun(K, V, ok) ->
            io:format("~p: ~p~n", [K, V])
        end,
        ok,
        MyMap
    ).
