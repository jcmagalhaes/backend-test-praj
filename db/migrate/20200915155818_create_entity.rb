# frozen_string_literal: true

class CreateEntity < ActiveRecord::Migration[6.0]
  def change
    create_table :entities do |t|
      t.string :name
    end
  end
end
