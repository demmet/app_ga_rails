Rails.application.routes.draw do

  get 'welcome/index' => 'welcome#index'
  root 'welcome#index'

  post 'repositories' => 'repositories#index', as: 'repositories'
  post 'repositories/details' => 'repositories#details', as: 'repository'

end
