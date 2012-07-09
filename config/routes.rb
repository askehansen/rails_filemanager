RailsFilemanager::Engine.routes.draw do
	
	root to: "files#index"

	resources :files
end
