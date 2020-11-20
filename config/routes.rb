Rails.application.routes.draw do
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  root to: "skips#index"
  resources :skips do
    collection do
      get :news
      get :newsDetail
      get :access
      get :contact
    end
  end

  resources :admins, only: :index
end
