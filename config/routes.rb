Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "welcome#home"
  resources :surveys, only: [:new, :create]
  resources :personalities, only: [:new, :create]
  resources :projects

  get '/users/:user_id/projects', to: "projects#public"


  # Catch-all route, redirects to root
  match '*path', to: redirect('/'), via: :all
end
