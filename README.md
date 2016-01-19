mqtt-client-erl
===============

MQTT Client for ZADATA in Erlang

Assuming *NIX OS with git and Erlang/OTP 18+ installed.

``` bash
$ git clone git@github.com:zadata/mqtt-client-erl.git
$ cd mqtt-client-erl 
$ rebar get-deps compile shell
==> goldrush (get-deps)
==> lager (get-deps)
==> gen_logger (get-deps)
==> getopt (get-deps)
==> emqttc (get-deps)
==> mqtt-client-erl (get-deps)
==> goldrush (compile)
==> lager (compile)
==> gen_logger (compile)
==> getopt (compile)
==> emqttc (compile)
==> mqtt-client-erl (compile)
==> mqtt-client-erl (shell)
Erlang/OTP 18 [erts-7.2.1] [source] [64-bit] [smp:4:4] [async-threads:10] [kernel-poll:false]

Eshell V7.2.1  (abort with ^G)
1> mqtt_client_erl:start().
[info] [Client <0.68.0>]: connecting to mqtt.zadata.com:1883
...
```
