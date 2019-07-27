Rails.application.routes.draw do

  #resource :articles, only: [:new]
  
  get 'article/new', to: 'article#new'
  
  post 'article/new', to: 'article#create'
  
  get 'article', to: 'article#list'
  
end
