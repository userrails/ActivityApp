Rails.application.routes.draw do
  resources :comments
  root to: 'events#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # following code will set the cable
  # create channel by rails g channel activity
  mount ActionCable.server => '/cable'
end
