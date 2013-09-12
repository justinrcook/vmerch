Vmerch::Application.routes.draw do
  resources :designs
  resources :categories, path: '/'
  root :to => 'visitors#new'
end
