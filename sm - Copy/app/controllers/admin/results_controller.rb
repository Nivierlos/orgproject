class Admin::ResultsController < Admin::ApplicationController
  def new
    @page_title = 'Add New Marks'
    @result = Result.new
  end

  def create
    @result = Result.new(result_params)
    if @result.save
      flash[:notice] = 'Marks added!'
      redirect_to admin_results_path
    else
      render 'new'
    end
  end

  def edit
    @page_title = 'Edit Marks'
    @result = Result.find(params[:id])

  end

  def update
     @result = Result.find(params[:id])
   if  @result.update(result_params)
      flash[:notice] = 'Marks updated!'
       redirect_to admin_results_path
     else
      render 'edit'
    end
  end

  def destroy
     @result = Result.find(params[:id])
    @result.destroy
    flash[:notice] = 'Marks deleted!'

    redirect_to admin_results_path
  end

  def index 
    @page_title = 'Marks'
    @results = Result.all
    @student = Student.all
    @department = Department.all
  end

  def show
    if params[:search]
      @result = Result.search(params[:search]).all.order('created_at DESC').paginate(:per_page => 10, :page => params[:page])
    else
      @results = Result.all.order('created_at DESC').paginate(:per_page => 10, :page => params[:page])
    end
    @page_title = 'Marks for:'
    @result = Result.find(params[:id])
    @department = Department.all
    @student = Student.all

    respond_to do |format|
      format.html
      format.pdf do
        pdf = ResultPdf.new(@result)
        send_data pdf.render, filename: 'marks for: '+(@result.student.reg_number)+'.pdf', type: 'application/pdf', disposition: 'inline'
      end
    end
  end

  def result_params
    params.require(:result).permit(:student_id, :course_id, :user_id, :department_id, :level, :marks)
  end 
end

