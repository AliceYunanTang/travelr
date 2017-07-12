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


  #
  #    Prefix Verb   URI Pattern               Controller#Action
  #     users GET    /users(.:format)          users#index
  #           POST   /users(.:format)          users#create
  #  new_user GET    /users/new(.:format)      users#new
  # edit_user GET    /users/:id/edit(.:format) users#edit
  #      user GET    /users/:id(.:format)      users#show
  #           PATCH  /users/:id(.:format)      users#update
  #           PUT    /users/:id(.:format)      users#update
  #           DELETE /users/:id(.:format)      users#destroy


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
