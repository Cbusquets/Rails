Rails.application.routes.draw do
  root to: 'dashboard#index'
  resources :employees, except: :show
  resources :clients, except: :show
end
