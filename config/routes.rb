Rails.application.routes.draw do
  root 'root#index'
  match '*a', :to => 'errors#routing', via: [:get, :post, :put, :patch, :delete, :options, :head]
end
