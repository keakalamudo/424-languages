%%%-------------------------------------------------------------------
%%% @author Kelo Akalamudo
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%Write Erlang functions squares, sum, and num.
%%%
%%%squares has one integer parameter N and returns a list of size N of the
%%%squares of float random numbers, one for each position in the list.
%%%Use the random:uniform() to generate a random number. If you want to create a seed
%%%that depends on the time you could use {A1,A2,A3} = now(), random:seed(A1, A2, A3),
%%%sum has two list parameters of the same size. The list entries are floats.
%%%sum returns a list in which each element is the sum of the corresponding elements of the arguments.
%%%num has a list parameter and returns an integer.  It returns the number of
%%%elements of the list that are less than 1.

%%% @end
%%% Created : 29. Sep 2014 1:06 PM
%%%-------------------------------------------------------------------
-module(func).
-author("Kelo Akalamudo").

%% API
-export([square/1],[sum/2]).


%%%------

pow(X) -> X*X.
square(0) -> [];
square(N) when N>0 ->
  X = random:uniform(N),
  [pow(X)|square(N-1)].


sum() -> [];