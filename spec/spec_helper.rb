# encoding: utf-8

ENV['RACK_ENV'] = 'test'

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
  config.order = 'random'
end
