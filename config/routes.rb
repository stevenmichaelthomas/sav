Sav::Application.routes.draw do
  root 'pages#home'

  get "pages/home", path: ''
end
