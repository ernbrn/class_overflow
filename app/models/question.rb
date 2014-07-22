class Question < ActiveRecord::Base
  validates :title, :content, :inquirer, presence: true

  has_many :answers
end
