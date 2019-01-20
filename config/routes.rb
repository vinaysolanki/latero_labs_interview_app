Rails.application.routes.draw do
  root 'interviews#index'

  resources :interviews do
    resources :test_skills, except: [:show, :index]
  end
end
