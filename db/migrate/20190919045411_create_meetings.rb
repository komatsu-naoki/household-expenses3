class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.datetime :start_time
      t.references :home
      # t.references :spending, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps null: false
    end
  end
end
