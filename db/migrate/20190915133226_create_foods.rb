class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.references :name, foreign_key: { to_table: :spendings }
      t.timestamps null: false
    end
  end
end
