# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "librato-storm-kafka/version"

Gem::Specification.new do |s|
  s.name        = "librato-storm-kafka"
  s.version     = Librato::Storm::Kafka::VERSION
  s.authors     = ["Mike Heffner"]
  s.email       = ["mike@librato.com"]
  s.homepage    = "https://github.com/librato/librato-storm-kafka"
  s.summary     = %q{Monitor storm-kafka topics}
  s.description = %q{Collects metrics from a storm-kafka setup and publishes them to Librato}

  s.rubyforge_project = "librato-storm-kafka"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "zookeeper"
  s.add_runtime_dependency "librato-metrics"
  s.add_runtime_dependency "trollop"
  s.add_runtime_dependency "yajl-ruby"
  s.add_runtime_dependency "excon"
  s.add_runtime_dependency "faraday_middleware"
  s.add_runtime_dependency "multi_xml"
  s.add_runtime_dependency "kafka-rb"

  s.add_development_dependency "rake"

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
