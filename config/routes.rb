Wlglobal::Application.routes.draw do
  devise_for :users
  resources :projects

  resources :customers

  resources :users

    root :to => 'welcome#index'
    


    get "welcome/index"
    
end
