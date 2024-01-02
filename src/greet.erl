%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Jan 2024 11:13 AM
%%%-------------------------------------------------------------------
-module(greet).
-author("guille_saez22").

%% API
-export([greet/1]).

%% Function that will take a list of names and will greet each of the names independently

greet([]) ->
  true;
greet([First | Rest]) -> %% Take the input list and just use the first element
  io:fwrite("Hello " ++ First ++ "\n"),
  greet(Rest).
