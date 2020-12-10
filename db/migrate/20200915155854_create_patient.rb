# frozen_string_literal: true

class CreatePatient < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :birthdate
      t.string :taxpayer
      t.string :email
      t.references :entity, foreign_key: true

      t.timestamps
    end

    add_index :patients, :email, unique: true
  end
end
