# frozen_string_literal: true

class CreateFlamePaths < ActiveRecord::Migration[5.1]
  def change
    create_table :flame_paths do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
