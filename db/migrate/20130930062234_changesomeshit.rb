class Changesomeshit < ActiveRecord::Migration
  def change
  	change_column :sales, :qty, :integer, :default => 1
  end
end
