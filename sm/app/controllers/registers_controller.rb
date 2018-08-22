class RegistersController < ApplicationController
  layout 'login'
  def new
    @page_title = 'Student Register'
    @student = Student.new
    @department = Department.all
  end

  def create
    @department = Department.all
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = 'registered successfully'
      redirect_to login_path
    else
      render 'new'
    end
  end

  def destroy
  end
  def student_params
    params.permit(:first_name, :last_name, :email, :password)
  end
end
