class AnswersController < ActionController::Base
  respond_to :html

  def index
    @answers = Answer.all
    respond_with @answers
  end

  def new
    @answer = Answer.new
    respond_with @question
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.save
    flash[:notice] = "Answer submitted"
    respond_with @answer, location: answers_path
  end


  private


  def answer_params
    params.require(:answer).permit :responder, :response, :question_id
  end
end