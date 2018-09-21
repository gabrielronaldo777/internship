Rails.application.routes.draw do
  post 'user/login' => 'user_token#create'

  namespace :v1 do
    get 'user', to: 'users#index'
    post 'user/create', to: 'users#create'
    put 'user', to: 'users#update'

    get 'menu', to: 'menus#index'
    get 'menu/:id', to: 'menus#show'
    post 'menu/create', to: 'menus#create'
    put 'menu/:id', to: 'menus#update'
    delete 'menu/:id', to: 'menus#delete'

    get 'order', to: 'orders#index'
    post 'order/create', to: 'orders#create'
    put 'order', to: 'orders#update'
    delete 'order', to: 'orders#delete'

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
