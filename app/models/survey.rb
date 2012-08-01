class Survey < ActiveRecord::Base
  attr_accessible :name
  has_many :weights, dependent: :destroy
  has_many :questions, through: :weights
end
