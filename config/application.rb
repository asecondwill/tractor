require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BootstrapDemo
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

    config.custom_fields = {
      Standard: {
        thingy: {type: :string},
        boat: {type: :select, options: [:scaffie, :mirror, :shrimper]},
        equipment: {type: :multiselect, options: [:boots, :jacket, :radio]},
        crew: {
          type: :repeater,
          sub_fields:{
            name: :string,
            bio: :text
          }
        }
      },
      Contact: {
        lat: :float,
        lng: :float,
        phone: :string
      },
      History: {}
    }




    config.to_prepare do
      ActionText::ContentHelper.allowed_tags << "iframe"
    end
  end
end
