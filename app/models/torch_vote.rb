# frozen_string_literal: true

class TorchVote < ApplicationRecord
  belongs_to :user
  belongs_to :torch
end
