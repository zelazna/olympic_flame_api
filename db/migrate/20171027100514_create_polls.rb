class CreatePolls < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.string :email
      t.string :fb_id
      t.integer :poll_choice_id

      t.timestamps
    end
  end
end
