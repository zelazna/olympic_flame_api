# frozen_string_literal: true

class CreateTorches < ActiveRecord::Migration[5.1]
  def change
    create_table :torches do |t|
      t.string :name
      t.string :description
      t.references :flame_path, foreign_key: true

      t.timestamps
    end
  end
end
