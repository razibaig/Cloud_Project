Rails.application.routes.draw do

  get 'bookings/:id/index', to: 'bookings#index'
  get 'users/index'
  post 'users/:id/destroy_user', to:'users#destroy_user'
  post 'reviews/add_review'
  post 'reviews/:id/destroy',to: 'reviews#destroy'
  get 'hotels/home'
  root 'hotels#home'
  post '/rate' => 'rater#create', :as => 'rate'
  resources :profiles
  devise_for :users
  resources :rooms do
    get 'bookings/:id/new', to:'bookings#new'
    post 'bookings/:user_id/create', to: 'bookings#create'
    get 'roompictures/index'
    post 'roompictures/add_picture'
    post 'roompictures/:id/remove_picture/', to: 'roompictures#remove_picture'
    post 'roompictures/create'
    post 'roompictures/destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
