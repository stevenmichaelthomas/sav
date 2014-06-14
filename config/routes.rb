Sav::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "events/index"
  get "resources/index"
  root 'pages#home'

  get "pages/home", path: '', as: 'home'
  get "pages/support", as: 'support'
  get "pages/contact", as: 'contact'

  resources :events, only: [:index]
  resources :resources, only: [:index]
end
