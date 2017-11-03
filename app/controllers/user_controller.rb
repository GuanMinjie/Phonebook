class UserController < ApplicationController
   def new
     @user = User.new
   end
   def create
<<<<<<< HEAD
     @user = User.new(user_params)
     session[:user_id] = @user.id

     if @user.save
      redirect_to '/phonebook#index'
=======
     @user = User.new(user_parmas)
     if @user.save

      redirect_to  'session#new'
>>>>>>> 80898d686580dd23be90fa7de81926f22abb5020
     else
       puts @user.errors.full_messages
       render :action => 'new'
     end

   end
<<<<<<< HEAD

   def user_params
     params.require(:user).permit(:name,:password,:password_confirmation)
=======
private
   def user_parmas
     params.require(:users).permit(:name,:password)
>>>>>>> 80898d686580dd23be90fa7de81926f22abb5020
   end
end
