# This file is used by Rack-based servers to start the application.
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: %i(get post delete put options head)
  end
end

require ::File.expand_path('../config/environment',  __FILE__)
run Rails.application

