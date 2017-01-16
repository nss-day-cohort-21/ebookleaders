class PagesController < ApplicationController
	
	def index
		@pages = Page.all
	end


	def show
		@user = User.find(params[:id])

	end

	
  

  def bio 
  end
  

  def contact
  end




end
