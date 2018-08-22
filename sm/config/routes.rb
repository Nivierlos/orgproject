Rails.application.routes.draw do
  namespace :admin do
    get 'login' => "sessions#new", :as => "login"
    get 'sessions/create'
    get 'logout' => "sessions#destroy", :as => "logout"
  end
  get 'registers/new' 
  get 'registers/create'
  get 'registers/destroy'

  get 'login' => "sessions#new", :as => "login"
  get 'sessions/create'
  get 'logout' => "sessions#destroy", :as => "logout"
  namespace :admin do
    get 'results/new'
    get 'results/create'
    get 'results/edit'
    get 'results/update'
    get 'results/destroy'
    get 'results/index'
    get 'results/show'
  end
  namespace :admin do
    get 'users/new'
    get 'users/create'
    get 'users/edit'
    get 'users/update'
    get 'users/destroy'
    get 'users/index'
    get 'users/show'
  end
  namespace :admin do
    get 'departments/new'
    get 'departments/create'
    get 'departments/edit'
    get 'departments/update'
    get 'departments/destroy'
    get 'departments/index'
    get 'departments/show'
  end
  namespace :admin do
    get 'courses/new'
    get 'courses/create'
    get 'courses/edit'
    get 'courses/update'
    get 'courses/destroy'
    get 'courses/index'
    get 'courses/show'
  end
  namespace :admin do
    get 'students/new'
    get 'students/create' 
    get 'students/edit'
    get 'students/update'
    get 'students/destroy'
    get 'students/index'
    get 'students/show'
  end
  get 'courses/index'
  get 'courses/show'
  get 'results/index'
  get 'results/show'
  get 'students/new'
  get 'students/create'
  get 'students/edit'
  get 'students/update'
  get 'students/destroy'
  get 'students/index'
  get 'students/show'

  resources :students, :results, :courses, :registers
  namespace :admin do
    resources :students, :results, :courses, :users, :departments, :sessions
  end
   root 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
