class Shiiiii < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :product_id, :integer
    remove_column :products, :image_id
  end
end
