require 'rails'
require 'delayed_job_active_record'

module DelayedJobUi
  class Engine < Rails::Engine
    isolate_namespace DelayedJobUi
    config.to_prepare do
      ActionView::Base.send :include, MainHelper
      Rails.application.config.assets.precompile += %w{delayed_job_ui.css delayed_job_ui.js jquery.dataTables.js}
    end
  end
end