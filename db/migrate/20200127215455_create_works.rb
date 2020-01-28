class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :title
      t.string :image
      t.string :description
      t.string :language
      t.integer :price
      t.timestamps
    end
  end
end
