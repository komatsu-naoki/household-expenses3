class CreateMoney < ActiveRecord::Migration[5.0]
  def change
    create_table :money do |t|
      t.references :spending, foreign_key: true
      # t.references :income, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps null: false
    end
  end
end
