Rails.application.routes.draw do
  
  resources :investments, only: [:create, :show]
  resources    :projects, only: [:index] 
  resources       :users, only: [:new, :create]
  resources        :cart, only: [:index, :create, :update]

  get        '/home', to: 'home#new'
  get       '/about', to: 'home#about'
  get       '/terms', to: 'home#terms'
  get     '/privacy', to: 'home#privacy'
  get   '/structure', to: 'home#structure'
  get       '/login', to: 'session#new'
  post      '/login', to: 'session#create'
  delete   '/logout', to: 'session#destroy'

  root 'home#new'
end
