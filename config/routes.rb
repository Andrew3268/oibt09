Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin? } do
    begin
      mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    rescue
      redirect_to new_user_session_path
    end
  end

  resources :categories
  devise_for :users
  root 'promocodes#index'
  resources :promocodes

  get '/promocodes/hashtag/:name', to: 'promocodes#hashtags'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
