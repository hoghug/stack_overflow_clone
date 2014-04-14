class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user
      t.integer :vote_value
      t.references :votable, polymorphic: true

    end

    drop_table :answer_votes
    drop_table :question_votes

  end
end
