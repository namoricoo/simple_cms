class SubjectsController < ApplicationController
  def index
    list
    render('list')
  end
  
  def list
    # @subjects = Subject.order("Subject.position ASC")
    @subjects =  Subject.all
  end

  def show    
    @subject =  Subject.find(params[:id])
  end
  
  def create
    #Instantiate a new object using form parameters
    temp_par = params.require(:subject).permit(:name, :position, :visible)
    @subject = Subject.new(temp_par)
    # Save the object
    if @subject.save
      #If save succeeds, redirect to the list action
      redirect_to(action: 'list')
    else
      #If save fails, redisplay the form so user can fix problem
      render('new')
    end    
  end

  def edit
    @subject =  Subject.find(params[:id])  
  end

  def update
    #Find object object using form parameters
    @subject = Subject.find(params[:id]) 
    # Save the object
    temp_par = params.require(:subject).permit(:name, :position, :visible)
    if @subject.update_attributes(temp_par)
      #If updatesucceeds, redirect to the list action
      redirect_to(action: 'show', id: @subject.id)
    else
      #If save fails, redisplay the form so user can fix problem
      render('edit')
    end    
  end
end
