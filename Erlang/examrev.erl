-module (examrev).
-author("KELO AKALAMUDO").


%%API 
-export([mirror/1]).
-export([number/1]).

-export([another_fac/1]).
-export([another_fib/1]).
mirror(Anything) -> Anything. 

number(one) -> 1;
number(two) -> 2;
number(three) -> 3.

another_fac(0) -> 1; 
another_fac(N) -> N * another_fac(N-1).

another_fib(0) -> 1;
another_fib(1) -> 1;
another_fib(N) -> another_fib(N-1) + another_fib(N-2).
