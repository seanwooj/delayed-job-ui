module DelayedJobUI
  class MainController < ::ApplicationController
    def invoke
      @job = Delayed::Job.find(params[:id])
      if @job.invoke_job
    end

    def destroy

    end

    def index
      respond_to do |format|
        format.json
      end
    end

  end
end