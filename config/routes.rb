Rails.application.routes.draw do
   devise_for :users
  root 'welcome#index'

  resources :items do
  	member do
  		put "like", to: "items#upvote"
  		put "dislike", to: "items#downvote"
  	end
  end

  resources :articles do
	member do
  		put "like", to: "articles#upvote"
  		put "dislike", to: "articles#downvote"
  	end
  end

  resources :lists
  resources :keywords

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
