class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order, index: true
      t.string :item_name
      t.integer :quantity
      t.integer :price
      t.integer :amount

      t.timestamps null: false
    end
    add_foreign_key :line_items, :order_id
  end
end
