module DelayedJobUI
  class MainController < ::ApplicationController
    def invoke
      @job = Delayed::Job.find(params[:id])
      if @job.invoke_job
    end

    def destroy

    end

  end
end