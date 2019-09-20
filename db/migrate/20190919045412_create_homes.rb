class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.references :user, foreign_key: true
      t.references :spending, foreign_key: true
      t.references :meeting, foreign_key: true
      t.timestamps null: false
    end
  end
end
