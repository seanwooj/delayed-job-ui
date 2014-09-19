Delayed Job UI
==============
My first attempt at a gem. A small and simple (and hopefully unintrusive) UI wrapper for delayed_job in Rails

To drop in the UI element, insert

```
<% unless Rails.env.production? #prevent this view in production %>
  <%= delayed_job_ui_layout %>
<% end %>
```