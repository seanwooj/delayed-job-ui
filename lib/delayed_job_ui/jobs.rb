module DelayedJobUi
  class Jobs
    def self.jobs(type)
      case type
      when :working
        query = "locked_at IS NOT NULL"
      when :failed
        query = "last_error IS NOT NULL"
      when :pending
        query = "attempts = 0 AND locked_at IS NULL"
      end
      if defined? query
        Delayed::Job.where(query)
      else
        Delayed::Job.all
      end
    end
  end
end