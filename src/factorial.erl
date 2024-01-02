%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Dec 2023 1:10 PM
%%%-------------------------------------------------------------------
-module(factorial).
-author("guille_saez22").

%% API
-export([factorial/1]).

%% Calculates the factorial of a number.

factorial(1) ->
  1;
factorial(X) ->
  X * factorial(X - 1). %% Using Recursion





