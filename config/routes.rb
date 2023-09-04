Rails.application.routes.draw do
  get 'pdf/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get '/pdf/:id', to: 'pdf#show', as: :pdf

  resources :projects, only: %i[index show]
end
