class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :item
      t.string :color

      t.timestamps
    end
  end
end
