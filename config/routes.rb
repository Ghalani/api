Rails.application.routes.draw do
  resources :subscriptions, except: [:new, :edit]
  root 'root#index'
  #resources :todos, except: [:new, :edit]
  match '*a', :to => 'errors#routing', via: [:get, :post, :put, :patch, :delete, :options, :head]
end
