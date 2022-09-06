Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show] do
    resources :items, only: [:index, :show, :create]
  end
  # the body of the do lets us
  # return an array of all items belonging to a user
end
