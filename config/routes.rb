Rails.application.routes.draw do
  root to: 'previews#index'
  resources :previews
end
