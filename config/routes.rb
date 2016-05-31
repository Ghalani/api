Rails.application.routes.draw do
  get 'countries/index'

  get 'countries/show'

  resources :users, except: [:new, :edit]
  resources :organizations, except: [:new, :edit] do
      resources :regions, except: [:new, :edit]
      resources :managers, except: [:new, :edit]
  end
  resources :regions, except: [:new, :edit] do
    resources :farms, except: [:new, :edit]
  end
  resources :managers, except: [:new, :edit] do
    resources :drivers, except: [:new, :edit]
    resources :farmers, except: [:new, :edit]
  end
  resources :drivers, except: [:new, :edit] do
    resources :pickups, except: [:new, :edit]
  end
  resources :subscriptions, except: [:new, :edit]
  resources :countries
  root 'root#index'
  #resources :todos, except: [:new, :edit]

    get 'errors/unprocessable_entity' => 'errors#unprocessable_entity'

  match '*a', :to => 'errors#routing', via: [:get, :post, :put, :patch, :delete, :options, :head]
end
