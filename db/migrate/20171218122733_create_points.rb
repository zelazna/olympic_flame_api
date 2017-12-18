class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.float :lat
      t.float :long
      t.references :flame_path, foreign_key: true
      t.timestamps
    end
  end
end
