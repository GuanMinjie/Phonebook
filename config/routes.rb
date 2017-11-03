Rails.application.routes.draw do
resources :phonebook
resources :session
#resources :user
get 'sign_up' => 'user#new'
post 'sign_up' => 'user#create'
  #post 'edit_phonebook'=> 'phonebook#create'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'session#new'
end
