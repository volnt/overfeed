Rails.application.routes.draw do
  devise_for :users
  resources :feeds

  root 'feeds#index'
end
