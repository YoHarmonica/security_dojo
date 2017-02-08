class Question < ActiveRecord::Base
  belongs_to :examination
  validates :answer, numericality: { only_integer: true, greater_than: 0, less_than: 3 }

  def answer_text
    answer == 1 ? "×" : "○" #条件に合えば左が結果として出る(三項演算子)
    # if answer == 1
    #   "×"
    # else
    #   "○"
    # end
  end
end
