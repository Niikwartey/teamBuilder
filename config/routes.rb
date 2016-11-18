Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "welcome#home"
  resources :surveys, only: [:new, :create]

  resources :users do
    resources :projects
  end

  get '/projects', to: 'projects#showall'

  delete '/users/:user_id/projects/:id', to: 'projects#destroy', as: :delete_project

  # Catch-all route, redirects to root
  match '*path', to: redirect('/'), via: :all
end
