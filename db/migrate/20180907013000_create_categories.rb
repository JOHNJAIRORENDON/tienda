class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :estado

      t.timestamps
    end
  end
end