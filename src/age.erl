%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Dec 2023 2:05 PM
%%%-------------------------------------------------------------------
-module(age).
-author("guille_saez22").

%% API
-export([getAge/1]).

%% Function
getAge(Name) ->
  AgeMap = #{
    "Alice" => 23,
    "Bob" => 25,
    "Carol" => 29
    },
  maps:get(Name, AgeMap, -1). %% maps:get is a built in module

