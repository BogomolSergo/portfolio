Rails.application.routes.draw do
  root 'pages#welcome'
  get '/works' => 'works#index', as: :works
end
