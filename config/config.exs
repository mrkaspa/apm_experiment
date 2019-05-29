# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :opencensus,
  sampler: {:oc_sampler_always, []},
  reporters: [
    {:oc_reporter_zipkin,
     [
       {:address, 'http://localhost:9411/api/v2/spans'},
       {:local_endpoint, %{"serviceName" => "service_demo"}}
     ]}
  ]
