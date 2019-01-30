-module(sample).
-export([divide_by_all/2,start/0]).

divide_by_all(Result,0) ->
    Result;
divide_by_all(Dividend,Count) when Count > 0 ->
    divide_by_all(Dividend/Count,Count-1).

do_this(Func) ->
    Func().

start() ->
    do_this(fun() -> 2 * 2 / 2 * 2 / 2 end).
