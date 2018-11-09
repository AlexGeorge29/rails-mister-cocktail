Rails.application.routes.draw do
  # get 'doses/destroy'
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :show, :create, :new] do
    resources :doses, only: [:create]
  end
  get 'cocktails/:id', to: "doses#new"

end
