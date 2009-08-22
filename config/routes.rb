ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'users'
	
	map.user ':user_id', :controller => 'users', :action => 'show'
	map.photo ':user_id/:photo_id', :controller => 'users', :action => 'show'
	#map.resources :users, :has_many => :photos

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
