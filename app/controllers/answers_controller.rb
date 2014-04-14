class AnswersController < ApplicationController

  def create
    question = Question.find(params[:question_id])
    user = User.find(question.user_id)
    @answer = question.answers.new(answer_params)

    if @answer.save
      redirect_to user_question_path(user, question)
    else
      redirect_to user_question_path(user, question)
    end


  end

  private

    def answer_params
      params.require(:answer).permit(:message, :user_id)
    end

end

