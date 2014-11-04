%%%-------------------------------------------------------------------
%%% @author Kaymuda
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 26. Oct 2014 11:19 AM
%%%-------------------------------------------------------------------
-module(fibs).
-author("Kelo Akalamudo").

%% API
-export([fib/1]).
-export([fib3/1]).
-export([loop/0]).
-export([con/1]).

fib(0) -> 1;
fib(1) -> 1;
fib(N) -> fib(N-1) +fib(N-2).

fib3(N) -> {fib(N),fib(N),fib(N)}.

loop() ->
  receive
    {Pid, N} ->
      Pid ! {self(),fib(N)},
      loop()
  end.

con(N1) ->
  Process1 = spawn(fun loop/0),
  Process1 ! {self(), N1},

  Process2 = spawn(fun loop/0),
  Process2 ! {self(), N1},

  Process3 = spawn(fun loop/0),
  Process3 ! {self(), N1},

  Result1 = receive
              {_,N} -> N
            end,
  Result2 = receive
              {_,N} -> N
            end,
  Result3 = receive
              {_,N} -> N
            end,
  {Result1,Result2,Result3}.