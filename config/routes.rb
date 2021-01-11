Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :stations, only: [ :index ]
      resources :data_stations, only: [ :index ]
      resources :data_no_stations, only: [ :index ]
    end
  end
end
