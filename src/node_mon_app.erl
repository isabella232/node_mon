-module(node_mon_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    node_mon_sup:start_link().

stop(_State) ->
    ok.
