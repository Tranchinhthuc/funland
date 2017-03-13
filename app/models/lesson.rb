class Lesson < ApplicationRecord
  has_many :students, through: :student_lessons, dependent: :destroy, class_name: "User"
  has_many :student_lessons, foreign_key: "student_id"
  has_many :words, through: :word_lessons, dependent: :destroy
  has_many :word_lessons

  enum age: {
    two_to_four: 1,
    four_to_six: 2,
    six_to_ten: 3,
    greater_than_ten: 4
  }

  enum level: {
    easy: 1,
    medium: 2,
    difficult: 3
  }

  def self.age_to_string age
    case age
    when :two_to_four
      "2-4"
    when :four_to_six
      "4-6"
    when :six_to_ten
      "6-10"
    when :greater_than_ten
      ">10"
    else
      ""
    end
  end

  def self.level_to_string level
    case level
    when :easy
      "Easy"
    when :medium
      "Medium"
    when :difficult
      "Diffcult"
    else
      ""
    end
  end
end
