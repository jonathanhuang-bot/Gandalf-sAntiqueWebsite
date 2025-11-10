class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :category, null: false, foreign_key: true
      t.string :condition
      t.integer :year_made
      t.string :image_url

      t.timestamps
    end
  end
end
