%%%-------------------------------------------------------------------
%% @doc {{name}} public API
%% @end
%%%-------------------------------------------------------------------

-module({{name}}_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    Dispatch = cowboy_router:compile(routes()),
    Env = #{
            env              => #{dispatch => Dispatch},
            stream_handlers  => [{{name}}_log_context_h, cowboy_metrics_h, cowboy_stream_h],
            metrics_callback => fun {{name}}_http_log_handler:execute/1,
            middlewares      => [{{name}}_context, cowboy_router, cowboy_handler]
           },
    TransportOpts = {{name}}:transport_options(),
    {ok, _} = cowboy:start_clear(?MODULE, TransportOpts, Env),
    {{name}}_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok = cowboy:stop_listener(?MODULE).

%%====================================================================
%% Internal functions
%%====================================================================

routes() ->
    HostMatch = '_',
    Paths = [{"/", {{name}}_http, []}],
    [{HostMatch, Paths}].
