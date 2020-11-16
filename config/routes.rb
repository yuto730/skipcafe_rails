Rails.application.routes.draw do
  root to: "skips#index"
  resources :skips do
    collection do
      get :news
      get :newsDetail
      get :access
    end
  end
end
