Rails.application.routes.draw do
  get 'flight_data/index'

  get 'flight_data/save'
  
  post 'flight_data/save'
  
  root 'flight_data#index'
  
  resources :flight_data 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# do
#     collection {post :xl}
#   end