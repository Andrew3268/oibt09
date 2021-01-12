class CreatePromocodes < ActiveRecord::Migration[6.1]
  def change
    create_table :promocodes do |t|
      t.integer :user_id
      t.string :code_title
      t.string :code_link
      t.string :code_image
      t.string :code_source
      t.string :code_video
      t.string :code_hashtag
      t.string :code_rating
      t.string :code_review_count
      t.float :code_icode_price
      t.float :code_wacode_price
      t.float :code_pct
      t.text :code_description

      t.string :code_spare_01
      t.string :code_spare_02
      t.string :code_spare_03
      t.string :code_spare_04
      t.string :code_spare_05
      t.string :code_spare_06
      t.string :code_spare_07
      t.string :code_spare_08
      t.string :code_spare_09
      t.string :code_spare_10
      t.string :code_spare_11
      t.string :code_spare_12
      t.string :code_spare_13
      t.string :code_spare_14
      t.string :code_spare_15
      t.string :code_spare_16
      t.string :code_spare_17
      t.string :code_spare_18
      t.string :code_spare_19
      t.string :code_spare_20
      
      t.text :code_spare_31
      t.text :code_spare_32
      t.text :code_spare_33
      t.text :code_spare_34
      t.text :code_spare_35
      
      t.float :code_spare_41
      t.float :code_spare_42
      t.float :code_spare_43
      t.float :code_spare_44
      t.float :code_spare_45
      t.float :code_spare_46
      t.float :code_spare_47
      t.float :code_spare_48
      t.float :code_spare_49
      t.float :code_spare_50
      
      t.integer :code_spare_56
      t.integer :code_spare_57
      t.integer :code_spare_58
      t.integer :code_spare_59
      t.integer :code_spare_60

      t.decimal :code_spare_61
      t.decimal :code_spare_62
      t.decimal :code_spare_63
      t.decimal :code_spare_64
      t.decimal :code_spare_65

      t.datetime :code_spare_66
      t.datetime :code_spare_67
      t.datetime :code_spare_68
      t.datetime :code_spare_69
      t.datetime :code_spare_70

      t.date :code_spare_71
      t.date :code_spare_72
      t.date :code_spare_73
      t.date :code_spare_74
      t.date :code_spare_75

      t.timestamps
    end
  end
end
