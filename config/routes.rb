DelayedJobUI::Engine.routes.draw do
  match '/index' => 'main#index', :as => :index, :via => :get
  match '/invoke' => 'main#invoke', :as => :invoke, :via => [:post, :put]
  match '/destroy' => 'main#destroy', :as => :destroy, :via => :delete
end
