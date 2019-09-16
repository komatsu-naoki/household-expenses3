class CreateSpendings < ActiveRecord::Migration[5.0]
  def change
    create_table :spendings do |t|
      t.string :name,  null: false
      t.string :value, null: false
      t.references :user, foreign_key: true
      # t.references :income, foreign_key: true
      t.timestamps null: false
    end
  end
end
