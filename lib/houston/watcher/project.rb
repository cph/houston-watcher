require "active_support/concern"

module Houston
  module Watcher
    module Project
      extend ActiveSupport::Concern

      included do
        has_many :checkins, class_name: "Houston::Watcher::Checkin"
      end

    end
  end
end
