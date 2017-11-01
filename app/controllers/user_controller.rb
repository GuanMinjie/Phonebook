class UserController < ApplicationController
   def new
     @user = User.new
   end
   def create
     @user = User.new(user_parmas)
     if @user.save

      redirect_to  'session#new'
     else
       render :action => 'new'
     end

   end
private
   def user_parmas
     params.require(:users).permit(:name,:password)
   end
end
