class Question < ActiveRecord::Base
  attr_accessible :content, :choices_attributes, :weights_attributes
  has_many :choices, dependent: :destroy
  has_many :weights, dependent: :destroy
  has_many :surveys, through: :weights
  accepts_nested_attributes_for :choices, reject_if: lambda { |a| a[:content].blank? },
                                      allow_destroy: true
  accepts_nested_attributes_for :weights
end
