Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [ :new, :create, :index, :show, :update, :edit] do
    resources :doses,   only: [ :new, :create]
  end
  resources :doses, only: [ :destroy]

  get 'cocktails', to: 'cocktails#index'
end