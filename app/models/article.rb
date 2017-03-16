class Article < ApplicationRecord
  # belongs_to :author, class_name: "User"
  belongs_to :author, polymorphic: true

  enum status: {
    inactive: 2,
    active: 1
  }

  enum article_type: {
    internal: 1,
    external: 2
  }

  def author_name
    self.author.try(:full_name) ? self.author.full_name : self.author.email
  end
end
