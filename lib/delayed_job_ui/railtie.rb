module DelayedJobUI
  class Railtie < Rails::Railtie
    initializer 'DelayedJobUI Helpers' do
      ActionView::Base.send :include, MainHelper
    end
  end
end