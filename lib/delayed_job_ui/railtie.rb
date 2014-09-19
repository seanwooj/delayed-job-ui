module DelayedJobUI
  class Railtie < Rails::Railtie
    initializer 'DelayedJobUI Initializers' do
      ActionView::Base.send :include, MainHelper
      Rails.application.config.assets.precompile += ['style.css']
    end
  end
end