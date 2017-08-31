Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope 'api' do
    scope 'v1' do
      ############################### USERS API ###############################
      resources :resistance_ships
      #########################################################################
      ############################## DEALERS API ##############################
      resources :resistance_members
      # get 'in_city/:city_id', on: :collection, action: :in_city
      # get 'near_city/:city_id', on: :collection, action: :near_city
      #########################################################################
    end
  end
end
