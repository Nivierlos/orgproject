class RegistersController < ApplicationController
  layout 'login'
  def new
    @page_title = 'Student Register'
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = 'Student added!'
      redirect_to login_path
    else
      render 'register'
      flash[:alert] = 'Enable to register'
    end
  end

  def destroy
  end
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :password)
  end
end
