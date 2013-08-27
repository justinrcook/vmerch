class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :name
      t.text :description
      t.references :category, index: true
      t.string :slug

      t.timestamps
    end
    add_index :designs, :slug, unique: true
  end
end
