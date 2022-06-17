Rails.application.routes.draw do
  # Session Routes
  post "/sessions" => "sessions#create"

  # User Routes
  post "/users" => "users#create"

  # Site Routes
  get "/sites" => "sites#index"
  get "/sites/:id" => "sites#show"
  post "/sites" => "sites#create"
  patch "/sites/:id" => "sites#update"
  delete "/sites/:id" => "sites#destroy"

  # Service Routes
  post "/sites/:site_id/services" => "services#create"
  patch "/sites/:site_id/services/:id" => "services#update"
  delete "/sites/:site_id/services/:id" => "services#destroy"

  # Carted Service Routes
  get "/sites/:site_id/carted_services" => "carted_services#index"
  post "/sites/:site_id/carted_services" => "carted_services#create"
  delete "/sites/:site_id/carted_services/:id" => "carted_services#destroy"

  # Order Routes
  get "/sites/:site_id/orders" => "orders#index"
  get "/sites/:site_id/orders/:id" => "orders#show"
  post "/sites/:site_id/orders" => "orders#create"
end
