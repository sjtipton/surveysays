class Question < ActiveRecord::Base
  attr_accessible :content
  has_many :choices, dependent: :destroy
  has_many :weights, dependent: :destroy
  has_many :surveys, through: :weights
end
