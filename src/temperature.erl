%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Dec 2023 1:29 PM
%%%-------------------------------------------------------------------
-module(temperature).
-author("guille_saez22").

%% API
-export([convert/1,convert/2]).

%% An atom is like a name for something (constant), you do not assign values to it
%% Atoms are defined using lower-case letters.

%% Convert temperature to Celsius / Fahrenheit
convert(FTemp, fahrenheit) ->
  (FTemp - 32) * 5 / 9;
convert(CTemp, celsius) ->
  CTemp * 9 / 5 + 32.

%% If we pass an atom that is not defined we get an error. No function clause Error.

convert({fahrenheit, X}) ->
  Y = convert(X, fahrenheit),
  {celsius, Y};
convert({celsius, X}) ->
  Y = convert(X, celsius),
  {fahrenheit, Y}.

