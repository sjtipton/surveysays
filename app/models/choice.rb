class Choice < ActiveRecord::Base
  attr_accessible :content, :correct
  belongs_to :question
end
