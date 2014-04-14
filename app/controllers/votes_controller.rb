class VotesController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @vote = @question.votes.create(vote_params)
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end


  private
    def vote_params
      params.require(:vote).permit(:vote_value, :user_id, :votable_id, :votable_type)
    end

end
