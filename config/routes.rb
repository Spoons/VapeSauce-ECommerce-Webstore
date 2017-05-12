Rails.application.routes.draw do

  mount Shoppe::Engine => "/shoppe"

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  
  resources :sessions, only: [:create, :destroy]
  get 'welcome/Index'
    get "product/:permalink", to: "products#show", as: "product"
    post "product/:permalink", to: "products#buy", as: "buy"
    root to: "home#index"
    post "product/:permalink", to: "products#buy"
    get "basket", to: "orders#show"
    get "home", to: "home#index" 
    resources :products
    get "about", to: "about#index"
    get "contact", to: "contact#index"
    #get "users", to: "shoppe/users#index"
end
