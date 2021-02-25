class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    # binding.pry
  end

  def activate
    @student = set_student
    @student.active ? @student.active = false : @student.active = true
    @student.save
    redirect_to action: 'show'
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end