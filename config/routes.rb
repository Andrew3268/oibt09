Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root 'promocodes#index'
  resources :promocodes

  get '/promocodes/hashtag/:name', to: 'promocodes#hashtags'

  get 'bridge/marketing'
  get 'bridge/posting'
  get 'bridge/search'
  get 'bridge/about_us'
  get 'bridge/withpromocode'
  get 'bridge/withcoupon'
  
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
