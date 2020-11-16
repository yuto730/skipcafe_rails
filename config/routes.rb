Rails.application.routes.draw do
  root to: "skips#index"
  resources :skips do
    collection do
      get :news
      get :newsDetail
    end
  end
end
