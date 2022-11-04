Rails.application.routes.draw do
   devise_for :users, controllers: { confirmations: 'users/confirmations' }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "articles#index"
  resources :articles, except: :index
  get 'categories/:categ', to: "articles#categged", as: :categged

  get 'tags/:tag', to: "articles#tagged", as: :tagged


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
