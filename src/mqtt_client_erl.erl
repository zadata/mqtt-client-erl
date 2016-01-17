-module(mqtt_client_erl).

-export([start/0]).

start() ->
    {ok, C} = emqttc:start_link([{host,         "mqtt.zadata.com"},
                                 {port,         1883},
                                 {username,     <<"guest">>},
                                 {password,     <<"guest">>},
                                 {client_id,    <<"some_client">>}]),
    emqttc:subscribe(C, <<"some/long/topic">>, 0),
    emqttc:publish(C, <<"some/long/topic">>, <<"Hello, MQTT!">>),
    receive
        {publish, Topic, Payload} ->
            io:format("Message received from ~s: ~p~n", [Topic, Payload])
    after
        1000 ->
            io:format("Error: receive timeout!~n")
    end,
    emqttc:disconnect(C).
