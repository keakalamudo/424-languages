-module(second).
-export([fun1/1,fun2/2,fun3/1,fun4/1]).

fun1(FileName) ->   
{ok, Device} = file:open(FileName, [read]),
 String1=io:get_line(Device,""),
 string:tokens(String1," ,.\n 0123456789").

%fun2(String,[]) -> [{String,1}];
fun2(String,Tup) ->
case lists:keyfind(String, 1, Tup) of
        {Key, Result} -> lists:keyreplace(Key,1,Tup,{Key,Result+1});
        false -> [{String,1}|Tup] 
    end.

fun3(List) ->
L=lists:map(fun(X)->string:to_lower(X) end, List),
Sol=[], 
lists:foldl(fun fun2/2,Sol,L).

fun4(FileName) ->
 %fun1(FileName).
  io:fwrite("~p~n",[lists:reverse(lists:keysort(2,fun3(fun1(FileName))))]).



%RESULT:
%second:fun1("sanil.txt").
%["Hello","World","Hello"]
%second:fun2("Hello",[{"Hello",1}]).
%[{"Hello",2}]
%second:fun3(["Hello","Hello","World"]).
%[{"World",1},{"Hello",2}]
%second:fun3(["Hello","hello","World"]).
%[{"world",1},{"hello",2}]
%135> second:fun4("sanil.txt").
%[{"world",1},{"hello",2}]
%136> c(second).               
%{ok,second}
%137> second:fun4("sanil.txt").
%[{"hello",2},{"world",1}]

19> count:countAll("as6a.txt").
[{"the",21},
{"a",15},
{"and",9},
{"word",8},
{"as",7},
{"of",7},
{"file",7},
{"function",6},
{"to",6},
{"list",5},
{"with",5},
{"tuple",5},
{"lists",5},
{"tuples",4},
{"this",4},
{"string",4},
{"words",4},
{"will",4},
{"it",4},
{"is",4},
{"frequency",4},
{"if",4},
{"in",3},
{"hash",3},
{"table",3},
{"has",3},
{"parameter",3},
{"returns",3},
{"one",3},
{"method",3},
{"use",3},
{"frequencies",2},
{"txt",2},
{"erlang",2},
{"uses",2},
{"functions",2},
{"name",2},
{"open",2},
{"line",2},
{"its",2},
{"key",2},
{"not",2},
{"found",2},
{"by",2},
{"lower",2},
{"case",2},
{"using",2},
{"cecs",1},
{"assignment",1},
{"count",1},
{"write",1},
{"four",1},
{"was",1},
{"written",1},
{"notepad",1},
{"so",1},
{"io",1},
{"get",1},
{"read",1},
{"whole",1},
{"tokens",1},
{"separate",1},
{"into",1},
{"second",1},
{"argument",1},
{"specifies",1},
{"all",1},
{"delimiters",1},
{"two",1},
{"parameters",1},
{"added",1},
{"appropriately",1},
{"each",1},
{"value",1},
{"keyfind",1},
{"find",1},
{"exists",1},
{"return",1},
{"false",1},
{"does",1},
{"append",1},
{"add",1},
{"keyreplace",1},
{"replace",1},
{"new",1},
{"increased",1},
{"their",1},
{"make",1},
{"provided",1},
{"desired",1},
{"insensitivity",1},
{"foldl",1},
{"build",1},
{"answer",1},
{"outputs",1},
{"final",1},
{"sorted",1},
{"from",1},
{"high",1},
{"low",1},
{"sort",1}]