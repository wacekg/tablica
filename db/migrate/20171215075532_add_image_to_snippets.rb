class AddImageToSnippets < ActiveRecord::Migration[5.1]
  def change
    add_column :snippets, :image, :string
  end
end
