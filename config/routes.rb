Rails.application.routes.draw do


 root to: "maps#index"

  get     '/login' => 'session#new'       # login form
  post    '/login' => 'session#create'   # check credentials & attempt login (set session)
  delete  '/login' => 'session#destroy'  # logout (destroy session)

  resources :users
  resources :app
  resources :comments
  resources :spots
  resources :maps


 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
