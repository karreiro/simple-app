# encoding: utf-8

Encoding.default_internal = Encoding::UTF_8
require 'bundler/setup'

require File.join(File.dirname(__FILE__), 'lib/app')

App::Server.set(:root, File.expand_path(File.join(Dir.pwd, 'lib')))
App::Server.set(:erb, :escape_html => true)

run App::Server
