class SessionController < ApplicationController
  def new
     @user = User.new
  end
  def create
    @user = User.where(name: params[:session][:name]).first

    if @user && @user.authenticate( params[:password])
      session[:user_id] = @user.id
       redirect_to   '/phonebook#index'
    else
      puts @user.password
      puts params[:session][:password]
      redirect_to  :action => 'new'

    end

  end

end
