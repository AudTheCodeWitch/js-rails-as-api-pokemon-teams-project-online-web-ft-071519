Rails.application.routes.draw do
  root 'trainers#index'
  resources :trainers, only: [:index] do
    resources :pokemons, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
