class Result < ActiveRecord::Base
  belongs_to :trial
  belongs_to :question
  delegate :user, to: :trial # userがきたらtrialに任せてしまう（委譲）
  delegate :text, to: :question

  def correct?
    answer == question.answer #自分の回答したものがあっているかどうか
  end
end