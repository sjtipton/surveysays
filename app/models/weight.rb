class Weight < ActiveRecord::Base
  attr_accessible :question_id, :survey_id, :value
  belongs_to :question
  belongs_to :survey
end
