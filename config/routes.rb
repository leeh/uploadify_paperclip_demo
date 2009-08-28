ActionController::Routing::Routes.draw do |map|
  map.resources :photos, :collection => { :check => :get } 

  map.root :controller => "site", :action => 'index'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
