Rails.application.routes.draw do
  root 'home#index'

  scope :api do
    resources :projects do
      resources :tasks do
        resources :comments
      end
    end
  end
end
