class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.string :name,  null: false
      t.string :value, null: false
      t.references :user, foreign_key: true
      t.string :date
      t.timestamps null: false
    end
  end
end
