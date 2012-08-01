class Question < ActiveRecord::Base
  attr_accessible :content, :choices_attributes
  has_many :choices, dependent: :destroy
  has_many :weights, dependent: :destroy
  has_many :surveys, through: :weights
  accepts_nested_attributes_for :choices, allow_destroy: true
end
