class Result < ActiveRecord::Base
  belongs_to :trial
  belongs_to :question
  delegate :user, to: :trial # userがきたらtrialに任せてしまう（委譲）
  delegate :text, to: :question
end