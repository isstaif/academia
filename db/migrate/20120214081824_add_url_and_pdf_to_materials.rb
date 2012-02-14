class AddUrlAndPdfToMaterials < ActiveRecord::Migration
  def change
    add_column :materials, :url, :string
    add_column :materials, :pdf_url, :string
  end
end
