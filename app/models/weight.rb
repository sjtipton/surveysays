class Weight < ActiveRecord::Base
  attr_accessible :value
  belongs_to :question
  belongs_to :survey
end
