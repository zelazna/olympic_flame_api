# frozen_string_literal: true

class TorchVote < ApplicationRecord
  belongs_to :user, validate: true
  belongs_to :torch, validate: true
end
