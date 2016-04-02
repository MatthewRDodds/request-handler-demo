Rails.application.routes.draw do
  namespace :api do
    resources :check_outs, only: [:create]
  end
end
