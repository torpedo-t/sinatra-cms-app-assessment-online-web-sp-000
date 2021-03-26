require './config/environment'
require 'bundler'
Bundler.setup

if ActiveRecord::Base.connection.migration_context.needs_migration?
    raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use VideosController
use UsersController
run ApplicationController

