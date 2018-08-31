class StudentsController < ApplicationController

def index
  @student = Student.find(params[:id])
end

def show
  @student = Student.find(params[:id])
end


  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end
end
