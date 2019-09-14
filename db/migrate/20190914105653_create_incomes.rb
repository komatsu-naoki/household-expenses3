class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.integer :value, null: false
      t.timestamps null: false
    end
  end
end
