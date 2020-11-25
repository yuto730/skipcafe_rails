Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  root to: "skips#index"
  resources :skips do
    collection do
      get :news
      get :access
      get :contact
    end
    member do
      get :newsDetail
    end
  end

  resources :users
  resources :admins do
    collection do
      get :news
    end
  end
end