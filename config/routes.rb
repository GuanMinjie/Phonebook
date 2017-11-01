Rails.application.routes.draw do
resources :phonebook
resources :session
#resources :user
get :sign_up, to:'user#new'
post :sign_up, to: 'user#create'


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'session#new'
end
