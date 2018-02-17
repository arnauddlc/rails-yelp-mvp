Rails.application.routes.draw do

	root 'restaurants#index'

	resources :restaurants, only: [:index, :show, :new, :create] do
		resources :reviews, only: [:new, :create]
	end

# He can see all the restaurants
# GET "restaurants"
# He can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"
# He can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38"
# He can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
