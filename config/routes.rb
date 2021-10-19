Rails.application.routes.draw do
  get 'about', to: 'pages#about'
  get 'contact', to:'pages#contact'

  resources :blogs

  resources :jobs, except: [:show]
  get 'job/:id', to: 'jobs#show', as: 'job_show'

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
