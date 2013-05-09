class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.references :company
      t.text :discount_summary
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :total_number
      t.integer :bought_number, default: 0
      t.boolean :validated, default: false
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
