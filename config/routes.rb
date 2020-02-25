Rails.application.routes.draw do
  root 'pages#welcome'
  get '/works' => 'works#index', as: :works
  get '/works/:id' => 'works#show', as: :show_work
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
