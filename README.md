Delayed Job UI
==============
My first attempt at a gem. A small and simple (and hopefully unintrusive) UI wrapper for delayed_job in Rails

To get the routes properly set up, insert this into your routes.rb file.
```ruby
unless Rails.env.production?
  mount DelayedJobUi::Engine => '/delayed_job_ui'
end
```

To drop in the UI element, insert the following at the bottom of your application's layout file.
```erb
<% unless Rails.env.production? #prevent this view in production %>
  <%= delayed_job_ui_layout %>
<% end %>
```
