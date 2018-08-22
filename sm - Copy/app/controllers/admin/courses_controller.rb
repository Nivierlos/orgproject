class Admin::CoursesController < Admin::ApplicationController
  def new
    @page_title = 'Add New Module'
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = 'Module created!'
    redirect_to admin_courses_path
  else
    render 'new'
  end
  end

  def update
     @course = Course.find(params[:id])
   if  @course.update(course_params)
      flash[:notice] = 'Module updated!'
       redirect_to admin_courses_path
     else
      render 'edit'
    end
  end

  def edit
    @page_title = 'Edit Module'
    @course = Course.find(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:notice] = 'Module deleted!'

    redirect_to admin_courses_path
  end

  def index
    @page_title = 'Modules'
    @courses = Course.all
    @department = Department.all
    @user = User.all
  end

  def show
  end
  def course_params
    params.require(:course).permit(:module_code, :module_name, :department_id, :level, :credit, :user_id)
  end
end
