class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string "item_name"
      t.integer "size", :default => 2
      t.integer "extraEspressoShots", :default => 0
      t.string "milkType", :default => "2%"
      t.string "flavor", :default => ""
      t.boolean "decaf", :default => false
      t.boolean "sentToStore", :default => false
      t.boolean "orderAccepted", :default => false
      t.boolean "orderReady", :default => false
      t.timestamps
    end
  end
end
