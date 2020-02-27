Rails.application.routes.draw do
  root 'pages#welcome'
  resources :works

  get '/about' => 'about_page#index', as: :about
  get '/contact' => 'contact#index', as: :contact
  get '/contact' => 'contact#sent', as: :sent

  resources :users
  get 'signup' => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :comments
end
