class Achievement < ApplicationRecord
  has_many :member_achieves, :through => :member_achieves
end
