-module({{name}}_http).

-behavior(cowboy_handler).

-ifdef(EUNIT).
-include_lib("eunit/include/eunit.hrl").
-endif.

%% API
-export([init/2]).

%%%===================================================================
%%% API
%%%===================================================================

init(#{method := <<"GET">>} = Req0, Opts) ->
    Req = {{name}}_util:reply_json(hello_world(), Req0),
    {ok, Req, Opts};
init(Req0, Opts) ->
    Req = cowboy_req:reply(405, Req0),
    {ok, Req, Opts}.

%%%===================================================================
%%% Internal functions
%%%===================================================================

hello_world() ->
    #{hello => world}.


%%%===================================================================
%%% Unit tests
%%%===================================================================

-ifdef(EUNIT).

hello_world_test_() ->
    [
     ?_assertEqual(#{hello => world}, hello_world())
    ].

-endif.
