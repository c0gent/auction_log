class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :item_name
      t.integer :sold_price

      t.timestamps
    end
  end
end
