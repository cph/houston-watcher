# Houston::Watcher

Houston Watcher sets up Houston to monitor an endpoint for availability and potentially other additional information.

At the interval specified in the configuration, it will send a GET request to an endpoint and record both the status of that request and a JSON response, if given. These will be stored in the database as Checkins, which belong to a project.

For reacting to checkins, subscribe to the `watcher:success` and `watcher:fail` triggers.


## Installation

In your `Gemfile`, add:

    gem "houston-watcher"

And in `config/main.rb`, add:

```ruby
use :watcher do
  watch :project_slug, url: https://..., every: "30 minutes"
end
```

And then execute:

    $ bundle


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
