Rails.application.routes.draw do
  get 'tags/index'
  get 'static/about', as: 'about'

  devise_for :users

  resources :ideas
  resources :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "static#homepage"
end
