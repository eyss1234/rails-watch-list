Rails.application.routes.draw do
  resources :lists, only: %i[index show new create] do
    resources :bookmark, only: %i[index show new create]
  end
end
