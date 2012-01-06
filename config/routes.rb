Trainingdiary::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "users/registrations" }
  resources :users
end
