class Solution < ActiveRecord::Base
  belongs_to :user
  belongs_to :problem

  has_many :approvals
end
