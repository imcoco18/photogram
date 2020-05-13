Rails.application.routes.draw do

  root 'homes#index'
  get 'homes/about'

  #URLとしてusersを含むことを示す  #コントラーラのカスタマイズが反映される
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }

  resources :post_images, only: [:new, :create, :index, :show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
