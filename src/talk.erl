%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 02. Jan 2024 2:18 PM
%%%-------------------------------------------------------------------
-module(talk).
-author("guille_saez22").

%% API
-export([run/0, alice/0, bob/2, startAlice/0, startBob/1]).

alice() ->
  receive
    { message, BobNode } -> io:fwrite("Alice got a message\n"),
      BobNode ! message,
      alice();
    finished -> io:fwrite("Alice is finished!\n")
  end.

bob(0, AliceNode) ->
  { alice, AliceNode } ! finished,
  io:fwrite("Bob is finished!\n");
bob(N, AliceNode) ->
  { alice, AliceNode } ! {message, self()}, %% ! is to send the message - Bob has sent the message to Alice
  receive
    message -> io:fwrite("Bob got a message\n")
  end,
  bob(N - 1, AliceNode).

run() ->
  register(alice, spawn(talk, alice, [])),
  register(bob, spawn(talk, bob, [3])).

startAlice() ->
  register(alice, spawn(talk, alice, [])).

startBob(AliceNode) ->
  spawn(talk, bob, [3, AliceNode]).

%% sudo scutil --setHostName <hostName>