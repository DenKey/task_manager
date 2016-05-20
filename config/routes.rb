Rails.application.routes.draw do
  root to: 'application#angular'

  scope :api do
    resources :projects do
      resources :tasks do
        resources :comments
      end
    end
  end
end
