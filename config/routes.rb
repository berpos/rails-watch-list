Rails.application.routes.draw do
  root to: 'lists#index'

  resources :bookmarks, only: :destroy

  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]
  end
end
