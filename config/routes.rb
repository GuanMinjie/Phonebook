Rails.application.routes.draw do
resources :phonebook
resources :session
#resources :user
<<<<<<< HEAD
get 'sign_up' => 'user#new'
post 'sign_up' => 'user#create'
  #post 'edit_phonebook'=> 'phonebook#create'
=======
get :sign_up, to:'user#new'
post :sign_up, to: 'user#create'


>>>>>>> 80898d686580dd23be90fa7de81926f22abb5020
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'session#new'
end
