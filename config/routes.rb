Rails.application.routes.draw do
  get 'ideas/new' , to: 'ideas#new'
  get 'ideas' , to: 'ideas#index'
end
