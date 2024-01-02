%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 02. Jan 2024 11:08 AM
%%%-------------------------------------------------------------------
-module(speak).
-author("guille_saez22").

%% API
-export([run/0, say/2]).

say(What, 0) ->
  done;
say(What, Times) ->
  io:fwrite(What ++ "\n"),
  say(What, Times - 1).

run() -> % This function will create two processes in parallel
  spawn(speak, say, ["Hi", 3]),
  spawn(speak, say, ["Bye", 3]).

%% Processed don't access the same data but can communicate between them.