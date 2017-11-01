class SessionController < ApplicationController
  def new
     @user = User.new
  end
  def create
    @user = User.where(name: params[:users][:name]).first
    if @user && @user.password == params[:users][:password]
       session[:user_id] = @user.id
       redirect_to 'phonebook#index'
    else
      redirect_to  :action => 'new'
    end

  end

end
