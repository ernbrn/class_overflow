class Question < ActiveRecord::Base
  validates :title, :content, :inquirer, presence: true
end
