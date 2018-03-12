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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
