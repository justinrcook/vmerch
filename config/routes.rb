Vmerch::Application.routes.draw do
  resources :designs

  resources :categories

  root :to => 'visitors#new'
end
