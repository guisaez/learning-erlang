%%%-------------------------------------------------------------------
%%% @author guille_saez22
%%% @copyright (C) 2024, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Jan 2024 11:22 AM
%%%-------------------------------------------------------------------
-module(dealership).
-author("guille_saez22").

%% API
-export([listPrices/1]).

listPrices(Currency) ->
  printPrice(getCarList(), Currency)
.

printPrice([], Currency) ->
  true;
printPrice([Car | Rest ], Currency) ->
  CarMap = getCarMap(),
  Price = maps:get(Car, CarMap),
  ConvertedPrice = convertPrice(Price, Currency),
  io:fwrite("The price for " ++ Car ++ " is " ++ integer_to_list(ConvertedPrice) ++ "\n"),
  printPrice(Rest, Currency).

convertPrice(Price, Currency) ->
  case Currency of
    eur -> round(Price * 0.9 );
    gbp -> round(Price * 0.75);
    usd -> Price
  end.

getCarList() ->
  ["BMW i8", "Lamborghini Hurracan", "Ferrari f12"].

getCarMap() ->
  #{
    "BMW i8" => 150000,
    "Lamborghini Hurracan" => 500000,
    "Ferrari f12" => 700000
  }.

