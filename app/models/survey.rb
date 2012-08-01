class Survey < ActiveRecord::Base
  attr_accessible :name, :questions_attributes
  has_many :weights, dependent: :destroy
  has_many :questions, through: :weights
  accepts_nested_attributes_for :questions, allow_destroy: true
end
