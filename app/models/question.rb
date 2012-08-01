class Question < ActiveRecord::Base
  attr_accessible :content, :weight, :choices_attributes
  has_many :choices, dependent: :destroy
  belongs_to :survey
  accepts_nested_attributes_for :choices, reject_if: lambda { |a| a[:content].blank? },
                                      allow_destroy: true
end
