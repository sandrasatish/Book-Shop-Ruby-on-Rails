Rails.application.routes.draw do
  resources :book1s
  root 'book1s#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
