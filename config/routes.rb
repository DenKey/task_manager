Rails.application.routes.draw do
  root to: 'application#angular'

  scope :api do
    resources :projects do
      resources  :tasks
      resources  :comments
    end
  end
end