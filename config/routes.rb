Rails.application.routes.draw do
  get 'welcome/index'

  resources :patients do
    resources :notes
  end

  root 'welcome#index'
end
