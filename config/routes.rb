Rails.application.routes.draw do
  resources :orders, only: [:create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      patch '/updateCart', to: 'users#updateCart'
    end
  end
namespace :api do
	namespace :v1 do
		resources :products, only: [:create, :index]
	end
end

resources :category, only: [:index]
resources :frontad, only: [:create, :index]

end
