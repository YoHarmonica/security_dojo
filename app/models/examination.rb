class Examination < ActiveRecord::Base
  has_many :questions
  has_many :trials
end
