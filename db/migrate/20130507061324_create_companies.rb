class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :address
      t.references :city
      t.references :neighbourhood
      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
