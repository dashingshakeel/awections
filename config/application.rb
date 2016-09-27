require_relative 'boot'
require File.expand_path('../../lib/auction_socket', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Awections
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
   
    # -- all .rb files in that directory are automatically loaded.
  config.sass.preferred_syntax= :sass
  config.middleware.use AuctionSocket
  end
end
