Rails.application.routes.draw do
  resources :restaurants, only: [:create, :index, :new, :show] do
    resources :reviews, only: [ :new, :create ]
  end
end
