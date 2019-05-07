require "houston/watcher/project"

module Houston
  module Watcher
    class Railtie < ::Rails::Railtie
      # The block you pass to this method will run for every request
      # in development mode, but only once in production.
      config.to_prepare do
        ::Project.send(:include, Houston::Watcher::Project)
      end

    end
  end
end
