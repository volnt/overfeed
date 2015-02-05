Rails.application.routes.draw do
  get 'contact' => 'static_pages#contact'
  get 'help' => 'static_pages#help'
  get 'about' => 'static_pages#about'
  get 'dashboard' => 'dashboard#view'

  devise_for :users
  resources :feeds

  root 'static_pages#home'
end
