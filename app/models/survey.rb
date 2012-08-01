class Survey < ActiveRecord::Base
  attr_accessible :name, :questions_attributes
  has_many :weights, dependent: :destroy
  has_many :questions, through: :weights
  accepts_nested_attributes_for :questions, reject_if: lambda { |a| a[:content].blank? },
                                        allow_destroy: true
end
