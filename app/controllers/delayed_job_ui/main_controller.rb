module DelayedJobUi
  class MainController < ::ApplicationController
    def invoke
      begin
      @job = Delayed::Job.find(params[:id])
      @job.invoke_job
      rescue => e
        puts "[DelayedJobUi] This job failed"
        puts e.message
        ap e.backtrace
        @job.failed_at = Time.zone.now
        @job.last_error = e.message
        @job.save
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

  end
end