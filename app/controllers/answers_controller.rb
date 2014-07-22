class AnswersController < ActionController::Base
  render :html

  def index
    @answers = Answer.all
    respond_with @answers
  end
end