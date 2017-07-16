Rails.application.routes.draw do
  root to: "dishes#index"

  resources :dishes, only: [:index]
  resource :menu, only: [:show]
  resources :menu_dishes, only: [:create, :update, :destroy]

end
