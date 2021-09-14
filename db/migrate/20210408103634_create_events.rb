class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :location
      t.text :description
      t.references :creator, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
