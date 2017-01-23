class UsersController < ApplicationController
  def show
  	#authorize! :update, @user 
  	@user = User.find(params[:id])
  	@books = Book.where(:user_id => @user_id).order("created_at DESC" )
  end

end
