class StaticPagesController < ApplicationController
  def home
    @students = Student.active
    @teachers = Teacher.active
    @general_descriptions = GeneralDescription.active
    @courses = Course.active
    render layout: false
  end
end
