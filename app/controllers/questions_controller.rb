class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.new(question_params)

    if @question.save
      redirect_to :root
    else
      render 'new'
    end

  end

  private
    def question_params
      params.require(:question).permit(:title, :message)
    end

end
