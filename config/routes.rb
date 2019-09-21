Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :users
  resources :spendings 
  resources :moneys
  resources :incomes
  resources :meetings 
  resources :homes
  
  

end
