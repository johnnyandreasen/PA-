Rails.application.routes.draw do
  root "home#index"

  get "home/index"
  get "home/about"
  get "home/contactus"
  get "home/help"
  
  resources :microposts do
    member do
      get :like
    end
  end

  resources :users

  # Adding profile routes properly
  get '/profile/home', to: 'profile#home'
  get '/about', to: 'profile#about'
  get '/portfolio', to: 'profile#portfolio'
end
