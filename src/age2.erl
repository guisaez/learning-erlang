%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 02. Jan 2024 10:47 AM
%%%-------------------------------------------------------------------
-module(age2).
-author("guille_saez22").

%% API
-export([]).

getType(N) when N =< 12 ->
  child;
getType(N) when N < 18 ->
  teen;
getType(N) ->
  adult.


