Rails.application.routes.draw do


  root to:  "homes#top"
  devise_for :users
  resources :post_images, onry:[:new,:create,:index,:show,:destroy]
  resources :users, onry:[:show,:edit,:update]
  get 'homes/about' => 'homes#about',as: "about"
 end
