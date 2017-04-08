Rails.application.routes.draw do
  resources :items
  resources :lists
  devise_for :users
  root 'welcome#index'

  resources :articles
  resources :keywords

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
