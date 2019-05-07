module Houston
  module Watcher
    class Checkin < ActiveRecord::Base
      self.table_name = "checkins"

      belongs_to :project, class_name: "::Project"

    end
  end
end
