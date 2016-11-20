Rails.application.routes.draw do
  get 'articles/new'

  get 'articles/index'

  get 'articles/create'

  get 'articles/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
