# encoding: utf-8

require 'plain_record'

# loading models
Dir['lib/models/**/*.rb'].each { |file| require File.expand_path(file) }

# plain record path
PlainRecord.root = [File.dirname(__FILE__), '/../data/'].join