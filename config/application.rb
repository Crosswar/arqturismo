require File.expand_path('../boot', __FILE__)

require "active_model/railtie"
require "active_job/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)
Mongoid.load!('config/mongoid.yml')

module Arqturismo
  class Application < Rails::Application
  end
end
