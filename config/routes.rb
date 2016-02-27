Rails.application.routes.draw do
  resources :pictures, only: :new
end
