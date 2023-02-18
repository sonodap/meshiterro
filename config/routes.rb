Rails.application.routes.draw do
  
  root to:  "homes#top"
  devise_for :users

  resources :post_images, onry:[:new,:create,:index,:show]
  
  get 'homes/about' => 'homes#about',as: "about"
 end
