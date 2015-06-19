class AddNewColumnToMy < ActiveRecord::Migration
  def up
    add_column :mies, :gpslat, :string
    add_column :mies, :gpslog, :string
  end
end
