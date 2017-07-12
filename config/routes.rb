Rails.application.routes.draw do

  # get 'comments/show'
  # get 'comments/index'
  # get 'comments/create'
  #

  root to: "app#index"

  get     '/login' => 'session#new'       # login form
  post    '/login' => 'session#create'   # check credentials & attempt login (set session)
  delete  '/login' => 'session#destroy'  # logout (destroy session)

  resources :users
  resources :app

  # resources :spots do
  # end

  get "/comments/admin" => "comments#admin_index"

  resources :comments

  # route to show comments for a specific spot, by including spot ID
  get "/spots/:spot_id/comments" => "comments#index", as: 'spot_comments'


  resources :spots
  resources :maps


 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
