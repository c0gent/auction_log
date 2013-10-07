class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :qty_sold
      t.integer :highest_price
      t.integer :lowest_price
      t.integer :avg_price

      t.timestamps
    end
  end
end
