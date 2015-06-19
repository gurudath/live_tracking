class CreateWheels < ActiveRecord::Migration
  def change
    create_table :wheels do |t|
      t.references :my, index: true

      t.timestamps
    end
  end
end
