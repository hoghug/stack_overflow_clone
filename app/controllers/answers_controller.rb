class AnswersController < ApplicationController
  def index
    @question = Question.find(params[:question_id])
    @answers = @question.answers
    @answer = Answer.new
  end

  def create
    question = Question.find(params[:question_id])
    user = User.find(question.user_id)
    @answer = Answer.create(answer_params)
    respond_to do |format|
      format.html { redirect_to user_question_path(user, question) }
      format.js
    end
  end

  private

    def answer_params
      params.require(:answer).permit(:message, :user_id, :question_id)
    end

end

