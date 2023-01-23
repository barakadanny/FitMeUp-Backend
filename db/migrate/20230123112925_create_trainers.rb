class CreateTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :trainers do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :price
      t.text :bio

      t.timestamps
    end
  end
end
