module DelayedJobUi
  class MainController < ::ApplicationController
    def invoke
      @job = Delayed::Job.find(params[:id])
      @job.invoke_job
      redirect_to params[:return_url]
    end

    def destroy
      @job = Delayed::Job.find(params[:id])
      @job.destroy!
      redirect_to params[:return_url]
    end

  end
end