class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.references :supplier, polymorphic: true, index: true

      t.timestamps
    end
  end
end
