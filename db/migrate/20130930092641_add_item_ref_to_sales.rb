class AddItemRefToSales < ActiveRecord::Migration
  def change
    add_reference :sales, :item, index: true
  end
end
