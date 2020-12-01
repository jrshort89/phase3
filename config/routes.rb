Rails.application.routes.draw do
  resources :versions
  resources :documents
  resources :commits
  resources :repositories

  get '/repositories/:id/documents', to: 'repositories#getDocuments'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
