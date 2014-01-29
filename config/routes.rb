Wlglobal::Application.routes.draw do
  devise_for :users
  resources :projects

  resources :customers

  resources :users

    root :to => 'welcome#index'
    
    
    unless Rails.application.config.consider_all_requests_local
		match '*not_found', to: 'errors#error_404'
	end

    get "welcome/index"
    
end
