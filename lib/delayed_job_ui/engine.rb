require 'rails'
require 'delayed_job_active_record'

module DelayedJobUI
  class Engine < Rails::Engine
    isolate_namespace DelayedJobUI
  end
end