Rails.application.routes.draw do
resources :phonebook
resources :session
resources :user

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'session#new'
end
