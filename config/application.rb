require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "rails/test_unit/railtie"



# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsClaraWebsite
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    Cloudinary.config do |config|
      config.cloud_name = ENV["CLOUDINARY_CLOUD_NAME"]
      config.api_key = ENV["CLOUDINARY_API_KEY"]
      config.api_secret = ENV["CLOUDINARY_API_SECRET"]
    end

    cloudinary_credentials = Rails.application.credentials.dig(:cloudinary)

    if cloudinary_credentials
      Cloudinary.config do |config|
        config.cloud_name = cloudinary_credentials[:cloud_name]
        config.api_key = cloudinary_credentials[:api_key]
        config.api_secret = cloudinary_credentials[:api_secret]
      end
    else
      # Gérer l'absence de configuration Cloudinary
      raise "Les identifiants Cloudinary ne sont pas configurés correctement."
    end


  end
end
