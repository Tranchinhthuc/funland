class Article < ApplicationRecord
  # belongs_to :author, class_name: "User"
  belongs_to :author, polymorphic: true

  def author_name
    self.author.try(:full_name) ? self.author.full_name : self.author.email
  end
end
