Rails.application.routes.draw do

  resources :games do
  	resources :reviews
  end

  root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
