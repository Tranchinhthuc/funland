class StudentLesson < ApplicationRecord
  belongs_to :student, class_name: "User"
  belongs_to :lesson

  PROGRESS = {
    _0_to_25: 1,
    _25_to_50: 2,
    _50_to_75: 3,
    _75_to_100: 4
  }

  def self.progress_to_string progress
    case progress
    when :_0_to_25
      "0-25%"
    when :_25_to_50
      "25-50%"
    when :_50_to_75
      "50-75%"
    when :_75_to_100
      ">75%"
    else
      ""
    end
  end

  def progress
    lesson = self.lesson
    student = self.student
    words = lesson.words
    student_words = StudentWord.where(student: student, word: words)
    if student_words.present?
      return student_words.done.count.to_f / student_words.count * 100
    else
      return 0
    end
  end
end
