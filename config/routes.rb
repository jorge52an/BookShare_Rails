Rails.application.routes.draw do
	scope "/api/v1" do
		post "login", to: "authentication#authenticate"
		resources :users, only: [:create, :update] do
			resources :products, only: [:index, :create, :update]
		end
		resources :products, only: [:index, :show] do
			resources :comments, only: [:index, :create, :update]
		end
	end
end