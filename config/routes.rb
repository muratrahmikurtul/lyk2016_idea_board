Rails.application.routes.draw do
  root 'ideas#index'
  get 'ideas/new' , to: 'ideas#new'
  get 'ideas' , to: 'ideas#index'
  get 'ideas/:id' , to: 'ideas#show', as: "idea"
  post 'ideas' , to: 'ideas#create'
  get 'ideas/:id/edit', to: 'ideas#edit'
  put 'ideas/:id', to: 'ideas#update'
  delete 'ideas/:id', to: 'ideas#destroy'
end
