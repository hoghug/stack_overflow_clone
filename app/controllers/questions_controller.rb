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

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
    @vote = Vote.new
    @best_answer = Answer.find(@question.best_answer_id)
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to :back
    else
      redirect_to :back
    end
  end

  private
    def question_params
      params.require(:question).permit(:title, :message, :best_answer_id)
    end

end
