%%%-------------------------------------------------------------------
%%% @author Kaymuda
%%% @copyright (C) 2014, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. Oct 2014 4:26 PM
%%%-------------------------------------------------------------------
-module(test).
-author("Kaymuda").

%% API
-export([readlines/1]).

readlines(FileName) ->
  {ok, Device} = file:open(FileName, [read]),
  try get_all_lines(Device)
  after file:close(Device)
  end.

get_all_lines(Device) ->
  case io:get_line(Device, "") of
    eof  -> [];
    Line -> Line ++ get_all_lines(Device)
  end.