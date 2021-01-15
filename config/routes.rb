Rails.application.routes.draw do
  devise_for :users
  root 'promocodes#index'
  resources :promocodes

  get '/promocodes/hashtag/:name', to: 'promocodes#hashtags'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
