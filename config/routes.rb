Rails.application.routes.draw do
  resources :dashboard, only: :index
  resources :weather, only: :index
end
