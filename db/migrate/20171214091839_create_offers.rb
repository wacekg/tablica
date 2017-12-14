class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.text :content
      t.integer :price

      t.timestamps
    end
  end
end
