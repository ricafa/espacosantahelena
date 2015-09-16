class CreateRequesters < ActiveRecord::Migration
  def change
    create_table :requesters do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :finish_at
      t.boolean :accept_terms
      t.references :goal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
