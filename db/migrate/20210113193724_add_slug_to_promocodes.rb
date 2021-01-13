class AddSlugToPromocodes < ActiveRecord::Migration[6.1]
  def change
    add_column :promocodes, :slug, :string
    add_index :promocodes, :slug, unique: true
  end
end
