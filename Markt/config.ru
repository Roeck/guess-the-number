require './config/environment'


use Rack::MethodOverride
use UsersController
use TasksController
use ListsController
run ApplicationController
run Sinatra::Application