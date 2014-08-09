class SectionsController < ApplicationController

  layout false

  def index
     @section = Section.order("position ASC") 
  end

  def new
    @section = Section.new
  end

  def show
     @section = Section.find(params[:id])
  end

  def edit
    @section = Section.find(params[:id])
  end

 def update
    @section = Section.find(params[:id])
    if @section.update_attributes(section_params)
        flash[:notice] = "Section updated successfully"
        redirect_to(:action => 'show', :id => @section.id)
    else
        render('edit')
    end
  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    section = Section.find(params[:id]).destroy
    flash[:notice] = "Section '#{section.name}' deleted successfully"
    redirect_to(:action => 'index')
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = "Section created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

 private 

      def section_params
        params.require(:section).permit(:name, :position, :visible, :content_type, :content)
      end

end

