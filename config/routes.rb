Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/inbox" if Rails.env.development?
  devise_for :users
  resources :users, except: [ :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#index'
  get "/home", to: "homepage#index"
  

end
