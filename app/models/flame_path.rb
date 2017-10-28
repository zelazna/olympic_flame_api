class FlamePath < ApplicationRecord
  validates :name, uniqueness: true
  has_many :polls, :dependent => :destroy
end
