Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { 
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }

  get 'about', to: 'pages#about'
  get 'contact', to:'pages#contact'

  resources :blogs do
    member do
      get :toogle_status
    end
  end

  resources :jobs, except: [:show]
  get 'job/:id', to: 'jobs#show', as: 'job_show'

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
