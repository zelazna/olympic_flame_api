class FlamePath < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }
  has_many :polls, dependent: :destroy
end
