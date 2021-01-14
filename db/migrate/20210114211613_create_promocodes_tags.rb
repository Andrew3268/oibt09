class CreatePromocodesTags < ActiveRecord::Migration[6.1]
  def change
    create_table :promocodes_tags, :id => false do |t|
      t.references :promocode, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
