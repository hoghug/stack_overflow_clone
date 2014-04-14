class Vote < ActiveRecord::Base
  belongs_to :answer, polymorphic: true
  belongs_to :question, polymorphic: true
  belongs_to :user
end
