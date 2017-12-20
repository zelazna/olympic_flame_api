# frozen_string_literal: true

class CreateTorchVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :torch_votes do |t|
      t.references :user, foreign_key: true
      t.references :torch, foreign_key: true

      t.timestamps
    end
  end
end
