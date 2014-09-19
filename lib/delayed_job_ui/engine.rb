require 'rails'
require 'delayed_job_active_record'
require 'delayed_job_ui'

module DelayedJobUI
  class Engine < Rails::Engine
    isolate_namespace DelayedJobUI
  end
end