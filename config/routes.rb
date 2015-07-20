Rails.application.routes.draw do
  get  '/auth/github/callback', to: 'sessions#create'
  get  '/auth/github', as: :login

  get  '/dashboard', to: 'dashboard#show'
  root 'home#show'
end
