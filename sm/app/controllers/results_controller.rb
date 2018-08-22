class ResultsController < ApplicationController
  def index
    @page_title = 'Marks'
    @results = Result.all
    @student = Student.all
    @department = Department.all
  end

  def show
    @page_title = 'Marks for:'
    @result = Result.find(params[:department_id] && params[:level] && params[:ac_year])
    @department = Department.all
    @student = Student.all
  end
end
