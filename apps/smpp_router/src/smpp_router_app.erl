-module(smpp_router_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1, init_db_tables/0]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
	init_db_tables(),
    smpp_router_sup:start_link().

stop(_State) ->
    ok.

init_db_tables()->
	mnesia:create_table(smpp_router_links,[]),
	mnesia:create_table(smpp_router_messages,[]).
