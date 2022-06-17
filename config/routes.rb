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

  # Order Routes
end
