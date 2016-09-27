class CreateBikes < ActiveRecord::Migration[5.0]
  def change
    create_table :bikes do |t|
      t.references :user, foreign_key: true
      t.string :picture
      t.string :frame
      t.text :description
      t.decimal :lat
      t.decimal :lng
      t.datetime :when
      t.string :color

      t.timestamps
    end
  end
end
