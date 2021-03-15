require './config/environment'
require 'bundler/setup'

run ApplicationController
use Rack::MethodOverride