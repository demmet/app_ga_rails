Rails.application.routes.draw do

  get 'welcome/index' => 'welcome#index'
  root 'languages#index'

  resources :languages, only: [:index, :show]
  resources :repositories, only: [:show]

end
