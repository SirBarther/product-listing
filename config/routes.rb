Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  resources :categories, only:[:index, :new, :create, :show] do
    resources :products, only:[:index, :new, :create, :show]
  end

end
