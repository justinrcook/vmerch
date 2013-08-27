Vmerch::Application.routes.draw do
  resources :categories

  root :to => 'visitors#new'
end
