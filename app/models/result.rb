class Result < ActiveRecord::Base
  belongs_to :trial
  belongs_to :question
end
