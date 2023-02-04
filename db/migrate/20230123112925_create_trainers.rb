class CreateTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :trainers do |t|
      t.references :user, references: :users, null: false, foreign_key: { to_table: :users }
      t.decimal :price, null: false
      t.text :bio, null: true

      t.timestamps
    end
  end
end
