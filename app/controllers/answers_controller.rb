class AnswersController < ActionController::Base
  respond_to :html

  def index
    @answers = Answer.all
    respond_with @answers
  end
end