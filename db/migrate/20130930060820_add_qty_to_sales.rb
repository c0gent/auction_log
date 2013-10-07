class AddQtyToSales < ActiveRecord::Migration
  def change
    add_column :sales, :qty, :integer
  end
end
