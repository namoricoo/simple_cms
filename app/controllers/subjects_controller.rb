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
    puts "--------------- id = #{params[:id]} -----------"
    @subject =  Subject.find(params[:id])
  end
  
end
