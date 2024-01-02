%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Dec 2023 12:50 PM
%%%-------------------------------------------------------------------
-module(helloWorld).
-author("guille_saez22").

%% API
-export([helloWorld/0,helloWorld/1,hi/0]). %% Export marker for the module. Functions that are not
%% listed here CANNOT be accessed or called outside this module.
%% /0 indicates that the function DOES NOT take any arguments.

%% Functions
helloWorld() ->
  "Hello World". %% Prints Hello World to the terminal

helloWorld(X) ->
  "Hello " ++ X.

hi() ->
  "Hi".



