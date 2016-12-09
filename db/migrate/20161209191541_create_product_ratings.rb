class CreateProductRatings < ActiveRecord::Migration
  def change
    create_table :product_ratings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.text :description
      t.integer :rating

      t.timestamps null: false
    end
  end
end
