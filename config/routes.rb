Rails.application.routes.draw do

  get 'article/new2'
  resource :article, only: [:new]
  
  #get 'article/new', to: 'article#new'
  
end
