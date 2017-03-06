class Trial < ActiveRecord::Base
  belongs_to :user
  # belongs_to :examination
  has_many :results
  accepts_nested_attributes_for :results
  validates :examination_id, uniqueness: {scope: :user_id, message: "は既に受験済です"}

  def score
    results.select {|r| r.correct?}.length * 10 #点数を出す
  end

  def pass?
    score >= 10
  end


end