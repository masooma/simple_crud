class PagesController < ApplicationController

  layout false

def index
     @page = Page.order("position ASC") 
  end

  def new
    @page = Page.new
  end

  def show
     @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
  end

 def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
        flash[:notice] = "Page updated successfully"
        redirect_to(:action => 'show', :id => @page.id)
    else
        render('edit')
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    page = Page.find(params[:id]).destroy
    flash[:notice] = "Page '#{page.name}' deleted successfully"
    redirect_to(:action => 'index')
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "Page created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

 private 

      def page_params
        params.require(:page).permit(:subject_id, :name, :permalink, :position, :visible)
      end

end
