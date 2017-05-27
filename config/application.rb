require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(*Rails.groups)

module Ircquest
  class Application < Rails::Application
    config.autoload_paths += Dir[Rails.root.join('app', 'services', '{*/}')]

    config.active_record.raise_in_transactional_callbacks = true
  end
end
