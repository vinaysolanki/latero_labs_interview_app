Rails.application.routes.draw do
  get 'test_results/index'
  get 'test_results/new'
  root 'interviews#index'

  resources :interviews do
    resources :test_skills, except: [:show, :index]
    resources :test_results
  end
end
