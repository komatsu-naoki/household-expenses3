class CreateSpendings < ActiveRecord::Migration[5.0]
  def change
    create_table :spendings do |t|
      t.string :name,  null: false, unique: true
      t.integer :value, null: false, default: 0
      t.timestamps null: false
    end
  end
end
