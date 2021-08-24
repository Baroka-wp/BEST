Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/inbox" if Rails.env.development?
  devise_for :users
  resources :users, except: [ :index]
  root 'homepage#index'

  resources :articles do
    collection do
      post :confirm
    end
  end
end
