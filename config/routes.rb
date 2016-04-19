Rails.application.routes.draw do
  root 'root#index'
  # for any other route
  match '*a', :to => 'errors#routing', via: [:get, :post, :put, :patch, :delete, :options, :head]
end
