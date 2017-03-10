class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :trials
  has_many :results, through: :trials

  def passed?(examination_id)
    # trials.select {|t| t.examination_id == examination_id}.present?
    trials.where(examination_id: examination_id).count > 0
  end
end
