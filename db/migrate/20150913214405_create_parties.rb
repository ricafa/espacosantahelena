class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :title
      t.text :description
      t.date :date

      t.timestamps null: false
    end
  end
end
