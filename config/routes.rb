Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "welcome#home"
  resources :surveys, only: [:new, :create]
  resources :personalities, except: [:destroy, :index]
  resources :users, only: [:show, :edit, :update]
  resources :projects, only: [:index]

  delete '/users/:user_id/projects/:id', to: 'projects#destroy', as: :delete_project_path

  resources :users do
    resources :projects, except: [:index]
  end

  get '/users/:user_id/projects', to: "projects#public"

  # Catch-all route, redirects to root
  match '*path', to: redirect('/'), via: :all
end
