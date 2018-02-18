Rails.application.routes.draw do
  get '/test', to: proc { |e| [200, {}, ["ok"]]}

  get '/users', to: "users#index"

  get '/contact', to: "contact#index"

  get "/static", to: "static_pages#static"

  get "/mission", to: "static_pages#mission"

  get "/about_us", to: "static_pages#about_us"

  get "/career", to: "static_pages#career"

  resources :orders

  #get "/orders", to: "orders#index"
end
