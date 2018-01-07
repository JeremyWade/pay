class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
    	t.string :title
    	t.string :subtitle
    	t.string :author
    	t.string :sku
    	t.string :price
    	t.text :description
      t.timestamps
    end
  end
end
