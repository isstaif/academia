class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :title
      t.text :description
      t.date :publication_date
      t.integer :issue
      t.integer :year
      t.text :pages

      t.timestamps
    end
  end
end
