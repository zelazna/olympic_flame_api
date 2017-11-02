class FlamePaths < ActiveRecord::Migration[5.1]
  def change
    create_table :flame_paths do |t|
      t.string :name

      t.timestamps
    end
  end
end
