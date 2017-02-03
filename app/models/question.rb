class Question < ActiveRecord::Base
  belongs_to :examination
  validates :answer, numericality: { only_integer: true, greater_than: 0, less_than: 3 }

  def answer_text
    if answer == 1
      "×"
    else
      "○"
    end
  end
end
