class Survey < ActiveRecord::Base
  attr_accessible :name, :questions_attributes
  has_many :questions
  accepts_nested_attributes_for :questions, reject_if: lambda { |a| a[:content].blank? },
                                        allow_destroy: true
end
