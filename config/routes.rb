Rails.application.routes.draw do
  # Add your routes here
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/app/github/callback', to: 'sessions#create', via: [:get, :post]
  root 'welcome#home'
end
