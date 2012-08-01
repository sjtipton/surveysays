class Question < ActiveRecord::Base
  attr_accessible :content, :survey_id
  has_many :choices, dependent: :destroy
  has_many :weights, dependent: :destroy
  has_many :surveys, through: :weights
end
