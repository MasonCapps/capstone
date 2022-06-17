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

  # Carted Service Routes

  # Order Routes
end
