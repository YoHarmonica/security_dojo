class Trial < ActiveRecord::Base
  belongs_to :user
  belongs_to :examination
  has_many :results
  accepts_nested_attributes_for :results
end