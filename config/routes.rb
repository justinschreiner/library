Rails.application.routes.draw do
  devise_for :users
  resources :books, :subjects
  root "books#index"
end
