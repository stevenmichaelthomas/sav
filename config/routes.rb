Sav::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#home'

  get "pages/home", path: '', as: 'home'
  get "pages/support", as: 'support', path: '/peer-support'
  get "pages/contact", as: 'contact', path: '/contact'

  resources :events, only: [:index]
  resources :tools, only: [:index], as: :resources, path: '/resources'
end
