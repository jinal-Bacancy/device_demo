Rails.application.routes.draw do
  resources :articles do
	  member do
	    put "like", to: "articles#upvote"
	    put "dislike", to: "articles#downvote"
	  end
	end
	  
  resources :students
  devise_for :admins, controllers: { registrations: 'admins/registrations' }

  root 'students#index'

  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
