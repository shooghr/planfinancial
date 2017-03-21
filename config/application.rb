require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Planfinancial
  # Getting general of application.
  class Application < Rails::Application
    config.generators do |g|
      g.stylesheets false
      g.test_framework :rspec, fixture: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.view_specs false
      g.helper_specs false
      g.integration_tool :rspec
    end
  end
end
