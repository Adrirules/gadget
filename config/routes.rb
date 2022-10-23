Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
  resources :articles, except: :index
  get '/tagged', to: "articles#tagged", as: :tagged

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
