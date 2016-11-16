Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "welcome#home"

  resources :surveys

  resources :users do
    resources :projects
  end

  get '/projects', to: 'projects#index'

  # Catch-all route, redirects to root
  match '*path', to: redirect('/'), via: :all
end
