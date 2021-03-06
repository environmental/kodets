require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "csv"

Bundler.require(*Rails.groups)

module Kodets
  class Application < Rails::Application
    config.time_zone = 'Europe/London'
    config.autoload_paths += ["#{config.root}/lib"]
  end
end
