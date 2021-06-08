Rails.application.routes.draw do
  get 'wine/index'
  get 'wine/show'
  root 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
