class AddDetailsToMy < ActiveRecord::Migration
  def change
    add_column :mies, :price, :decimal, precision: 5, scale: 2
    add_reference :mies, :supplier, polymorphic: true, index: true
  end
end
