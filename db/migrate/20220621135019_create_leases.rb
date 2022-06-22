class CreateLeases < ActiveRecord::Migration[6.1]
  def change
    create_table :leases do |t|
      t.belongs_to :apartment
      t.belongs_to :tenant
      t.integer :rent
      t.timestamps
    end
  end
end
