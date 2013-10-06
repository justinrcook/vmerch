Vmerch::Application.routes.draw do
  devise_for :users
  resources :emails
  get 'contact', to: 'emails#new'

  resources :designs, path: '/design/'
  resources :categories
  root :to => 'categories#show', id: 'featured'
  get '*id' => 'categories#show'
end
