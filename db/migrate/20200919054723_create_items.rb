# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string 'Name'
      t.integer 'Quantity'

      t.timestamps
    end
  end
end
