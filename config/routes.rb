Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: "welcome#home"
  resources :surveys, only: [:new, :create]

end
