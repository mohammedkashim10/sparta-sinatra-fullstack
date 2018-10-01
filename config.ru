require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?
require "pg"
require_relative "./models/car.rb"
require_relative "./models/aboutcar.rb"
require_relative './controllers/static_controller.rb'
require_relative "./controllers/cars_controller.rb"
require_relative "./controllers/aboutcars_controller.rb"

use Rack::Reloader
use Rack::MethodOverride

run Rack::Cascade.new([
  StaticController,
  CarsController,
  AboutcarsController
])
