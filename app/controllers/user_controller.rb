class UserController < ApplicationController
   def new
     @user = User.new
   end
   def create
     @user = User.new(user_params)
     session[:user_id] = @user.id

     if @user.save
      redirect_to '/phonebook#index'
     else
       puts @user.errors.full_messages
       render :action => 'new'
     end

   end

   def user_params
     params.require(:user).permit(:name,:password,:password_confirmation)
   end
end
