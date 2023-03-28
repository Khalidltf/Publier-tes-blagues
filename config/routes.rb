Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#index"

  get "home", to: "home#index"
  # get 'home/index'

  # get "blagues", to: "blagues#index"
  # get "blague", to: "blagues#show"
  # get 'blagues/show'

  resources :blagues, only: [:show, :index, :new, :edit, :create, :update, :destroy]

  delete 'blagues/:id', to: "blagues#destroy", as: :blague_del

end
