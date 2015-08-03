Rails.application.routes.draw do
  resources :hobbies
  root 'hobbies#index'
end
