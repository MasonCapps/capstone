Rails.application.routes.draw do
  # Session Routes
  post "/sessions" => "sessions#create"
  
  # User Routes
  post "/users" => "users#create"

  # Site Routes

  # Service Routes

  # Carted Service Routes

  # Order Routes
end
