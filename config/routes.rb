Rails.application.routes.draw do
  root 'interviews#index'

  resources :interviews
end
