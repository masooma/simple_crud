class DemoController < ApplicationController

	layout false
	
  def index
  	
  	#render(:template => "demo/hello")
  end

  def hello
  	#render("index")
  	@array = [1,2,3,4,5]
  	  	@id = params[:id]
  	@page = params['page']
  end
end
