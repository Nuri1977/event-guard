# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :subtitle
      t.datetime :event_start_date
      t.datetime :event_end_date
      t.text :description

      t.timestamps
    end
  end
end
