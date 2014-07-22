class Answer < ActiveRecord::Base
  validates :response, :responder, presence: true
end
