Trainingdiary::Application.routes.draw do
  devise_for :users
  resources :users

  root :to => "welcome#index"
end
