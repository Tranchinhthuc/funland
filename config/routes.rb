Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'users/registrations', sessions: "users/sessions"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show]
  resources :lessons, only: [:index, :show]
  resources :trial_registrations

  devise_scope :user do
    authenticated :user do
      root "articles#index", as: :authenticated_root
    end
    unauthenticated do
      root "static_pages#home", as: :unauthenticated_root
    end
  end
  root "static_pages#home"
end
