Rails.application.routes.draw do
  
  root 'application#home'
  
  devise_for :users, :controllers => {:registrations => "registrations", omniauth_callbacks: 'callbacks'}
  
    devise_scope :user do 
       get 'login', to: 'devise/sessions#new'
     
    end
    devise_scope :user do 
      get 'signup', to: 'devise/sessions#new'
   end
 
  
    resources :patterns
  resources :comments
  
  resources :comments do 
    resource :patterns, only: [ :index, :show, :new ] 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
