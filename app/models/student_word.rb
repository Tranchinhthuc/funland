class StudentWord < ApplicationRecord
  belongs_to :student, class_name: "User"
  belongs_to :word

  enum status: {
    new_word: 1,
    not_done_yet: 2,
    done: 3
  }

  def self.status_to_string status
    case status
    when :new_word
      "New"
    when :not_done_yet
      "Not done yet"
    when :done
      "Done"
    end
  end
end
