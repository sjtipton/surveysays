class Choice < ActiveRecord::Base
  attr_accessible :content, :correct, :question_id
  belongs_to :question
end
