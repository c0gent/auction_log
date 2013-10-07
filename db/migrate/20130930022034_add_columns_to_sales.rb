class AddColumnsToSales < ActiveRecord::Migration
  def change
    add_column :sales, :date, :date
    add_column :sales, :quality, :int
  end
end
