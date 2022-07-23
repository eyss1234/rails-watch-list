Rails.application.routes.draw do
  resources :lists, only: %i[index show new create] do
    resources :movies, only: %i[index show]
    resources :bookmark, only: %i[index show]
  end
end
