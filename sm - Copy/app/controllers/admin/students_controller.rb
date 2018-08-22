class Admin::StudentsController < Admin::ApplicationController
  def new
    @page_title = 'Add New Student'
    @student = Student.new

  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = 'Student added!'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @page_title = 'Edit Student'
    @student = Student.find(params[:id])

  end

  def update
     @student = Student.find(params[:id])
   if  @student.update(student_params)
      flash[:notice] = 'Student updated!'
       redirect_to root_path
     else
      render 'edit'
    end
  end

  def destroy
     @student = Student.find(params[:id])
    @student.destroy
    flash[:notice] = 'Student deleted!'

    redirect_to admin_students_path
  end

  def index
    @page_title = 'Students'
    @students = Student.all
    @department = Department.all
  end

  def show
    @page_title = 'Student Info'
    @student = Student.find(params[:id])
    @department = Department.all
  end
  def student_params
    params.require(:student).permit(:first_name, :last_name, :sex, :id_passport, :department_id, :level, :reg_number, :dob, :email, :telephone, :father_name, :mother_name, :image)
  end
end
