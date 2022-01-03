Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      jsonapi_resources :courses, only: [:index, :show, :create]
    end
  end
end
