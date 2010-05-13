require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
#require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "rails/test_unit/railtie"
#require 'mongoid'
#require 'devise/orm/mongoid'

# Auto-require default libraries and those for the current Rails environment.
Bundler.require :default, Rails.env

module RubyAfrica
  class Application < Rails::Application
    def application_name
      "Ruby Africa"
    end

    def application_computer_name
      "Ruby Africa"
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Add additional load paths for your own custom dirs
    # config.load_paths += %W( #{config.root}/extras )

    # Only load the plugins named here, in the order given (default is alphabetical).
    # :all can be used as a placeholder for all plugins not explicitly named
    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

    # Activate observers that should always be running
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
    # config.i18n.default_locale = :de

    # Configure generators values. Many other options are available, be sure to check the documentation.
    config.generators do |g|
      g.orm             :mongoid
      g.template_engine :erb
      g.test_framework  :test_unit, :fixture => true
    end

    config.cookie_secret = 'ee533f88e9158866277d3a87aeb55cc9d9258dd4eb358de3d88ff0c732959b83af1ad8cba5249e98f5ea2fc09abf0ce0c79ad4b6fb2f6c0a583a71ea43aa2dc7'

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters << :password
  end
end
