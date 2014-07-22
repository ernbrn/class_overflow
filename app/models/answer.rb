class Answer < ActiveRecord::Base
  validates :response, presence: true
end
