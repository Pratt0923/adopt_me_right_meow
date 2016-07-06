class CreateCats < ActiveRecord::Migration[5.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :description
      t.string :breed
      t.integer :age
      t.string :price
      t.timestamps
    end
  end
end
