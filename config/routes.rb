Rails.application.routes.draw do

  root 'home#index'
  get 'movie', to: 'movie#search', as: 'movie'
  post '/', to: 'movie#search'
  
end
