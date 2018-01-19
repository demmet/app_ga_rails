Rails.application.routes.draw do

  get 'welcome/index' => 'welcome#index'
  root 'repositories#index'

  resources :languages, only: [:index]
  resources :repositories, only: [:index, :show]

end
