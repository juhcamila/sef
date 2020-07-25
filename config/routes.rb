Rails.application.routes.draw do
  resources :tipos_produtos
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'dashboards#index'
end
