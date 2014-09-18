module DelayedJobUI
  class MainController < ::ApplicationController
    def invoke

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