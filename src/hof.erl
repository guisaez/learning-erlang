%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 02. Jan 2024 10:53 AM
%%%-------------------------------------------------------------------
-module(hof).
-author("guille_saez22").

%% API
-export([double/0]).

double() ->
  F = fun(X) -> 2 * X end,
  map(F, [1,5,2,7,4,6]).

map(F, []) ->
  [];
map(F, [N | Rest]) ->
  [F(N) | map(F, Rest)].