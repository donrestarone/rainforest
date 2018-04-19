class AddColumnToProductsAndCustomers < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :customer_id, :integer
  	add_column :customers, :product_id, :integer
  end
end
