Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :found_reports do
    collection do
      get 'category/:category', to: 'found_reports#index', as: :category_found_reports
    end
  end
  resources :lost_reports
  root "found_reports#index"
end
