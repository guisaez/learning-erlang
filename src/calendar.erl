%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 28. Dec 2023 9:12 PM
%%%-------------------------------------------------------------------
-module(calendar).
-author("guille_saez22").

%% API
-export([leap/1]).

leap(Year) ->
  if
    Year rem 400 == 0 -> leap;
    Year rem 100 == 0 -> non_leap;
    Year rem 4 == 0 -> leap;
    true -> non_leap
  end.

day(Month, Year) ->
  Leap = leap(Year),
  case Month of
    jan -> 31;
    feb when Leap == leap -> 29; %% condition to a value - called a guard
    feb -> 28;
    mar -> 31;
    apr -> 30;
    may -> 31;
    jun -> 30;
    jul -> 31;
    aug -> 31;
    sep -> 30;
    oct -> 31;
    nov -> 30;
    dec -> 31
  end.