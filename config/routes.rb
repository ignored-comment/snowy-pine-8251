Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/flights', to: 'flights#index'
  delete '/flights', to: 'flights#destroy', as: 'remove_this_passenger'
end
