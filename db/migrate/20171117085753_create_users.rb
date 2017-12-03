# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string 'password_digest'
      t.datetime 'created_at', null: false
      t.datetime 'updated_at', null: false
    end
  end
end
