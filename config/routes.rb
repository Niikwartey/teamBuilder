Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "welcome#home"
  resources :surveys, only: [:new, :create]
  resources :personalities, except: [:destroy, :index]
  resources :projects
  resources :users, only: [:show, :edit, :update]

  get '/users/:user_id/projects', to: "projects#public"

  # Catch-all route, redirects to root
  match '*path', to: redirect('/'), via: :all
end
