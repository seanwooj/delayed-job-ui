module DelayedJobUi
  class MainController < ::ApplicationController
    def invoke
      begin
      @job = Delayed::Job.find(params[:id])
      @job.invoke_job
      rescue => e
        failed_job(e)
      else
        @job.delete # if successful, destroy the job.
      end
      redirect_to params[:return_url]
    end

    def destroy
      @job = Delayed::Job.find(params[:id])
      @job.destroy!
      redirect_to params[:return_url]
    end

    private

    def failed_job(e)
      puts "[DelayedJobUi] This job failed"
      puts e.message
      ap e.backtrace
      @job.failed_at = Time.zone.now
      @job.last_error = e.message
      @job.attempts += 1
      @job.save
    end

  end
end