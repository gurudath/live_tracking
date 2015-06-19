class CreateMies < ActiveRecord::Migration
  def change
    create_table :mies do |t|
      t.string :name

      t.timestamps
    end
  end
end
