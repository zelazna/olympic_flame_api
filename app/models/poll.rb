class Poll < ApplicationRecord
  include EmailValidation
  validates :email, uniqueness: true,
                    allow_blank: true,
                    email: true
  validates :fb_id, uniqueness: true,
                    allow_blank: true

  validate :email_xor_fb_id
  belongs_to :flame_path

  private

  def email_xor_fb_id
    unless email.blank? ^ fb_id.blank?
      errors.add(:base, 'Specify a email or a fb_id, not both')
    end
  end
end
