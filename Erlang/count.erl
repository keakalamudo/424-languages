%%%-------------------------------------------------------------------
%%% @author Kaymuda
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Oct 2014 2:14 PM
%%%-------------------------------------------------------------------
-module(count).
-author("KELO AKALAMUDO").

%% API
-export([printList/1]).
-export([freqList/2]).
-export([printHash/1]).
-export([countAll/1]).


% PrintList has a file name parameter and returns a List of words from the file.
printList(FileName) ->
  %Open the file.
  {ok, Device} = file:open(FileName,[read]),
  %Read all the lines in the file.
  Data = io:get_line(Device, ""),
  %Seperates the words in the file.
  S = string:tokens(Data, ",.\n _: 0123456789"),
  S.%Prints word list.

% freqList has a string word and tuple lists parameters and returns a tuple list parameter.
% Each tuple is a word key and a frequency value.
freqList(Key,List) ->
  % This method finds a tuple if it exits and returns false if it doesnt.
  case lists:keyfind(Key, 1, List) of
    % If the word is found replace the tuple with a new tuple with frequency increased by 1.
    {Key,Val} -> lists:keyreplace(Key, 1, List,{Key,Val+1});
  % If the key is not found add a tuple with frequency added by 1.
    false -> [{Key,1}|List]
  end.

% PrintHash has a list of words as parameter and returns a hash table of tuples of words and their frequencies
printHash(WList) ->
  lists:foldl(fun(Key,List)-> freqList(string:to_lower(Key),List) end, [], WList ).

countAll(Filename) ->
  Allwords = printList(Filename),
  TupList = printHash(Allwords),
  io:fwrite("~p~n",[lists:reverse(lists:keysort(2,TupList))]).


%%%RESULT
%%%19> count:countAll("as6a.txt").
%%%[{"the",21},
%%%{"a",15},
%%%{"and",9},
%%%{"word",8},
%%%{"as",7},
%%%{"of",7},
%%%{"file",7},
%%%{"function",6},
%%%{"to",6},
%%%{"list",5},
%%%{"with",5},
%%%{"tuple",5},
%%%{"lists",5},
%%%{"tuples",4},
%%%{"this",4},
%%%{"string",4},
%%%{"words",4},
%%%{"will",4},
%%%{"it",4},
%%%{"is",4},
%%%{"frequency",4},
%%%{"if",4},
%%%{"in",3},
%%%{"hash",3},
%%%{"table",3},
%%%{"has",3},
%%%{"parameter",3},
%%%{"returns",3},
%%%{"one",3},
%%%{"method",3},
%%%{"use",3},
%%%{"frequencies",2},
%%%{"txt",2},
%%%{"erlang",2},
%%%{"uses",2},
%%%{"functions",2},
%%%{"name",2},
%%%{"open",2},
%%%{"line",2},
%%%{"its",2},
%%%{"key",2},
%%%{"not",2},
{%%%"found",2},
%%%{"by",2},
%%%{"lower",2},
%%%{"case",2},
%%%{"using",2},
%%%{"cecs",1},
%%%{"assignment",1},
%%%{"count",1},
%%%{"write",1},
%%%{"four",1},
%%%{"was",1},
%%%{"written",1},
%%%{"notepad",1},
%%%{"so",1},
%%%{"io",1},
%%%{"get",1},
%%%{"read",1},
%%%{"whole",1},
%%%{"tokens",1},
%%%{"separate",1},
%%%{"into",1},
%%%{"second",1},
%%%{"argument",1},
%%%{"specifies",1},
%%%{"all",1},
%%%{"delimiters",1},
%%%{"two",1},
%%%{"parameters",1},
%%%{"added",1},
%%%{"appropriately",1},
%%%{"each",1},
%%%{"value",1},
%%%{"keyfind",1},
%%%{"find",1},
%%%{"exists",1},
%%%{"return",1},
%%%{"false",1},
%%%{"does",1},
%%%{"append",1},
%%%{"add",1},
%%%{"keyreplace",1},
%%%{"replace",1},
%%%{"new",1},
%%%{"increased",1},
%%%{"their",1},
%%%{"make",1},
%%%{"provided",1},
%%%{"desired",1},
{%%%"insensitivity",1},
%%%{"foldl",1},
%%%{"build",1},
%%%{"answer",1},
%%%{"outputs",1},
%%%{"final",1},
%%%{"sorted",1},
%%%{"from",1},
%%%{"high",1},
%%%{"low",1},
%%%{"sort",1}]



