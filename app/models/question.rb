class Question < ActiveRecord::Base
  belongs_to :examination
  validates :answer, inclusion: { in: [1,2]}
end
