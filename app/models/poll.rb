class Poll < ApplicationRecord
  validates :email, uniqueness: { case_sensitive: false },
                    allow_blank: true,
                    format: {
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                      on: :create
                    }
  validates :fb_id, uniqueness: { case_sensitive: false },
                    allow_blank: true

  validate :email_xor_fb_id
  belongs_to :flame_path

  private

  def email_xor_fb_id
    errors.add(:base, 'Specify a email or a fb_id, not both') unless email.blank? ^ fb_id.blank?
  end
end
