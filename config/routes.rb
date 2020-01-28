Rails.application.routes.draw do
  root 'pages#welcome'
  get '/works' => 'works#index', as: :works
  get '/works/:id' => 'works#show', as: :show_work
  get '/about' => 'about_page#index', as: :about
  get '/contact' => 'contact#index', as: :contact
end
