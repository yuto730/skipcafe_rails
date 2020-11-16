Rails.application.routes.draw do
  root to: "skips#index"
  resources :skips, only: :index
end
