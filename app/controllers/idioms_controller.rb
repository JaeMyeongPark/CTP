class IdiomsController < ApplicationController
  def add
	@idiom = Idiom.new
  end

  def create 
	@idiom = Idiom.new(params[:idiom])
	if @idiom.save
      redirect_to root_url		
	else
	  render "add"
	end
  end

  def edit
  end

  def show
	
  end

  def remove
  end

end
