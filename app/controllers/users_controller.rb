class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.sign_up( params[:user] )
    if @user
      redirect_to(@user) and return
    else
      render( :action => "new" ) and return
    end
  end

  def show

  end
end
