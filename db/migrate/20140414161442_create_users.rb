class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end

    create_table :questions do |t|
      t.belongs_to :user
      t.string :message

      t.timestamps
    end

    create_table :answers do |t|
      t.belongs_to :user
      t.belongs_to :question
      t.string :message

      t.timestamps
    end

    create_table :answer_votes do |t|
      t.belongs_to :user
      t.belongs_to :answer
      t.integer :vote_value
    end

    create_table :question_votes do |t|
      t.belongs_to :user
      t.belongs_to :question
      t.integer :vote_value
    end



  end
end
