Rails.application.routes.draw do
  root to: 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :edit, :update]
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books, only: [:index, :show, :edit, :create, :update]
end
