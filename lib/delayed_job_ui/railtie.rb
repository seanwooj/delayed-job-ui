module DelayedJobUi
  class Railtie < Rails::Railtie
    initializer 'DelayedJobUi Initializers' do
      # ActionView::Base.send :include, MainHelper
      # Rails.application.config.assets.precompile += ['style.css']
    end
  end
end