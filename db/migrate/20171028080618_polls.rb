class Polls < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.string :email
      t.string :fb_id
      t.timestamps
      t.references :flame_path, foreign_key: true
    end
  end
end
