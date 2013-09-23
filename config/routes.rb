Vmerch::Application.routes.draw do
  resources :emails

  resources :designs, path: '/design/'
  resources :categories
  root :to => 'categories#show', id: 'featured'
  get '*id' => 'categories#show'
end
