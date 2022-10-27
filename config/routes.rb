Rails.application.routes.draw do
  resources :items, only: [:index]

  # This allows someone to access the 'users' resource
  # and as a result, they can also access '/items'
  # aftewrards, but only to use the ':index',
  # ':show', and ':create' actions so that they
  # can create individual 'items' for 'users':
  resources :users, only: [:show] do
    resources :items, only: [:index, :show, :create]
  end
end
