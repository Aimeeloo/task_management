Rails.application.routes.draw do
  resources :task
  root 'tasks#index'
end
