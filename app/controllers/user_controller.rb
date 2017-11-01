class UserController < ApplicationController
   def new
     @user = User.new
   end
   def creat
     @user = User.new(user_parmas)
     if @user.save
      redirect_to 'Phonebooks#index'
     else
       render :action => 'new'
     end

   end

   def user_params
     params.require (:users).permit(:name,:password)
   end
end
