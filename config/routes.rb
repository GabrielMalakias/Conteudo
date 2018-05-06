Rails.application.routes.draw do
  root to: 'category#index'

  get '/category/:id', to: 'category#show', as: 'category'
  get '/article/:id', to: 'article#show', as: 'article'
end
