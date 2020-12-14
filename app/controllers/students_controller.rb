class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate_student
    kiddo = Student.find(params[:id])
    kiddo.toggle!(:active)
    redirect_to student_path(kiddo)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end