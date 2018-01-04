# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.date :date
      t.string :title
      t.string :location
      t.string :description
      t.text :images_url, array: true, default: []
      t.references :flame_path, foreign_key: true

      t.timestamps
    end
  end
end
