class LessonsController < ApplicationController
  before_action :authenticate_user!

  def index

    @student_lessons = StudentLesson.where(student: current_user)
    if params[:progress].present?
      @student_lessons = @student_lessons.select{|sl| condition_by_progress(sl.progress, params[:progress]) }
    end

    @lessons = Lesson.where(id: @student_lessons.map(&:lesson_id))

    @lessons = @lessons.where(age: params[:age]) if params[:age].present?
    @lessons = @lessons.where(level: params[:level]) if params[:level].present?

    @student_lessons = @student_lessons.select{|sl| sl.lesson.in?(@lessons)}
  end

  def show
    @lesson = Lesson.find(params[:id])
    @student_lesson = StudentLesson.where(lesson: @lesson, student: current_user)
    if !@student_lessons.present?
      @student_lesson = StudentLesson.create(lesson: @lesson, student: current_user)
    end
  end

  private
  def condition_by_progress progress, progress_type
    case progress_type
    when "1"
      progress <= 25
    when "2"
      progress >= 25 && progress <= 50
    when "3"
      progress >= 50 && progress <= 75
    when "4"
      progress > 75 && progress <= 100
    end
  end
end
