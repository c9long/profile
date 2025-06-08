Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root "home#index"
  # Define a route for the Clio controller's index action
  get "clio" => "clio#index", as: :clio
  get "amped_up" => "amped_up#index", as: :unity
  namespace :manulife do
    get "sre" => "sre#index", as: :sre
    get "gcs" => "gcs#index", as: :gcs
  end

  # Define a route for the Home controller's index action
  get "home" => "home#index", as: :home
  post "contact", to: "home#contact"
end
