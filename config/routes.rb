Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # All registration and session for user devise
  devise_for :users

  # Home Page
  root "lists#index"

  resources :lists, only: %i[show]
  namespace :user do
    resources :lists do
      resources :bookmarks, only: %i[new create]
    end
    resources :bookmarks, only: %i[destroy]
  end
end
