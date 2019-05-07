module Houston
  module Watcher
    class Configuration

      def watch(project_slug, url:, every:)
        Houston.timer.every every do
          Houston.async do
            project_id = ::Project.where(slug: project_slug).ids.first
            next unless project_id

            response = Faraday.get url
            info = {}
            begin
              info = MultiJson.load(response.body) unless response.body.blank?
            rescue MultiJson::ParseError
            end

            checkin = Checkin.create!(project_id: project_id, status: response.status, info: info)
            Houston.observer.fire (response.success? ? "watcher:success" : "watcher:fail"), checkin: checkin
          end
        end
      end

    end
  end
end
