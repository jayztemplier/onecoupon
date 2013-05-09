class CreateNeighbourhoods < ActiveRecord::Migration
  def self.up
    create_table :neighbourhoods do |t|
      t.string :name
      t.references :city
      t.timestamps
    end
  end

  def self.down
    drop_table :neighbourhoods
  end
end
