Rails.application.routes.draw do

  devise_for :users
  root to:  "homes#top"
  get 'homes/about' => 'homes#about',as: "about"
  resources :post_images, onry:[:new,:create,:index,:show,:destroy] do
    resource :favorites, onry:[:create,:destroy]
    resources :post_comments, onry: [:create,:destroy]
  end  
  resources :users, onry:[:show,:edit,:update]
end
