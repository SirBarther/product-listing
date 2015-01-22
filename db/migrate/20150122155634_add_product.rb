class AddProduct < ActiveRecord::Migration
  def up
    create_table :products do |n|
      n.string :name, null: false
      n.integer :category_id, null: false
      n.decimal :price, null: false
      n.string :description
    end
  end

  def down
    drop_table :products
  end
end
