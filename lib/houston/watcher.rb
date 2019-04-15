require "houston/watcher/engine"
require "houston/watcher/configuration"

module Houston
  module Watcher
    extend self

    def config(&block)
      @configuration ||= Watcher::Configuration.new
      @configuration.instance_eval(&block) if block_given?
      @configuration
    end

  end


  # Extension Points
  # ===========================================================================
  #
  # Read more about extending Houston at:
  # https://github.com/houston/houston-core/wiki/Modules


  # Register events that will be raised by this module
  #
  #    register_events {{
  #      "watcher:create" => params("watcher").desc("Watcher was created"),
  #      "watcher:update" => params("watcher").desc("Watcher was updated")
  #    }}


  # Add a link to Houston's global navigation
  #
  #    add_navigation_renderer :watcher do
  #      name "Watcher"
  #      path { Houston::Watcher::Engine.routes.url_helpers.watcher_path }
  #      ability { |ability| ability.can? :read, Project }
  #    end


  # Add a link to feature that can be turned on for projects
  #
  #    add_project_feature :watcher do
  #      name "Watcher"
  #      path { |project| Houston::Watcher::Engine.routes.url_helpers.project_watcher_path(project) }
  #      ability { |ability, project| ability.can? :read, project }
  #    end

end
