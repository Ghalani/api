Rails.application.routes.draw do
  root 'root#index'
  #resources :todos, except: [:new, :edit]
  match '*a', :to => 'errors#routing', via: [:get, :post, :put, :patch, :delete, :options, :head]
end
