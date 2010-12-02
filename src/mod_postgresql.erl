-module(mod_postgresql).

-behaviour(gen_module).

-export([execute/1, execute/2]).

%% gen_module callbacks
-export([start/1, stop/0]).

-include("netspire.hrl").

start(Options) ->
    ?INFO_MSG("Starting dynamic module ~p~n", [?MODULE]),
    PoolSize = proplists:get_value(pool_size, lists:last(Options), 5),
    case start_pool(PoolSize, proplists:delete(pool_size, Options)) of
        {ok, _Pid} ->
            application:set_env(netspire, database_backend, pgsql);
        _Any ->
            ok
    end.

start_pool(Size, Options) ->
    ChildSpec = {pgsql_pool,
                 {pgsql_pool, start_link, [Size, Options]},
                 transient,
                 3000,
                 worker,
                 [pgsql_pool]
                },
    supervisor:start_child(netspire_sup, ChildSpec).

stop() ->
    ?INFO_MSG("Stopping dynamic module ~p~n", [?MODULE]),
    application:unset_env(netspire, database_backend),
    supervisor:terminate_child(netspire_sup, pgsql_pool),
    supervisor:delete_child(netspire_sup, pgsql_pool).

execute(Q) ->
    execute(Q, []).

execute(Q, Params) ->
    case pgsql_pool:get_connection() of
        {ok, C} ->
            try
                pgsql:equery(C, Q, Params)
            after
                pgsql_pool:return_connection(C)
            end;
        {error, timeout} ->
            ?ERROR_MSG("Unable to obtain database connection due to timeout~n", []),
            {error, timeout}
    end.
