Wlglobal::Application.routes.draw do
  resources :wstudents

  devise_for :users
  resources :projects

  resources :customers

  resources :users

    root :to => 'welcome#index'
    


    get "welcome/index"
    get "welcome/design"
    
end
