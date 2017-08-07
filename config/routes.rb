Rails.application.routes.draw do
  devise_for :users
  root to: "dishes#index"

  resources :dishes
    delete "/dishes/:id", to: "dishes#destroy", as: :delete_dish
  resource :menu, only: [:show]
  resources :menu_dishes, only: [:create, :update, :destroy]
    delete "/menu_dishes/:id", to: "menu_dishes#destroy", as: :delete_menu_dish

end
