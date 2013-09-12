Vmerch::Application.routes.draw do
  resources :designs, path: '/design/'
  resources :categories, path: '/category'
  root :to => 'categories#show', id: 'featured'
end
