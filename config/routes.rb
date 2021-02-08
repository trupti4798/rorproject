Rails.application.routes.draw do
  resources :servs
  #get 'sessions/new'
 # get 'sessions/create'
  #get 'sessions/destroy'
 # get 'sessions/welcome'
  #resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get 'home/index'
root 'home#index'
resources :users
resources :sessions, only: [:new, :create, :destroy]
get 'signup', to: 'users#new', as: 'signup'
get 'login', to: 'sessions#new', as: 'login'
get 'logout', to: 'sessions#destroy', as: 'logout'
get 'welcome', to: 'sessions#welcome', as: 'welcome'


get 'employees/list'

get 'employees/add'
get 'employees/new'

get 'employees/delete'
get 'employees/destroy'

get 'employees/update'
get 'employees/edit' 
get 'employees/show'


get 'careers/apply'
get 'careers/new'
get 'careers/list'


get 'partners/list'
get 'partners/new'
get 'partners/add'
get 'partners/delete'
get 'partners/destroy'
get 'partners/edit'
get 'partners/update'
get 'partners/show'

get 'home/userlogin'
get 'home/adminlogin'
get 'home/about'


match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]

end
