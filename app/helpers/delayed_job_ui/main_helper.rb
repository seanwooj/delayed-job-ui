module DelayedJobUi
  module MainHelper
    def delayed_job_ui_layout
      render :partial => 'delayed_job_ui/ui_layout'
    end

    def jobs(type, model)
      case type
      when :working
        query = "locked_at IS NOT NULL"
      when :failed
        query = "last_error IS NOT NULL"
      when :pending
        query "attempts = 0 AND locked_at IS NULL"
      end
      if defined? query
        model.where(query)
      else
        model.all
      end
    end
  end
end