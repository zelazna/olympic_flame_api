class Poll < ApplicationRecord
    validates_uniqueness_of :user_name
    validates_uniqueness_of :fb_id
end
