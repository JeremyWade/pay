 class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
     t.string :email
     t.integer :amount
     t.string :description
     t.string :currency
     t.string :customer_id
     t.integer :product_id
     t.string :metadata
     t.string :source
     t.timestamps
    end
  end
end