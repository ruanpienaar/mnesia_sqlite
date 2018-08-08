-module(mnesia_sqlite_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-include("mnesia_sqlite.hrl").

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    mnesia_sqlite_sup:start_link().

stop(_State) ->
    ok.
