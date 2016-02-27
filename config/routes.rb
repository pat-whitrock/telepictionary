Rails.application.routes.draw do
  resources :pictures, only: %w(create new show)
end
