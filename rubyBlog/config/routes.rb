Rails.application.routes.draw do
  namespace :admin do
    get 'comments/destroy'
  end
  get 'comments/new'
  get 'comments/create'
  namespace :admin do
    get 'posts/new'
    get 'posts/create'
    get 'posts/edit'
    get 'posts/update'
    get 'posts/destroy'
    get 'posts/index'
    get 'posts/show'
  end
  get 'posts/index'
  get 'posts/show'
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
