class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user, references: :users, null: false, foreign_key: { to_table: :users }
      t.references :trainer, references: :trainers, null: false, foreign_key: { to_table: :trainers }
      t.date :appointment_date, null: false
      t.string :appointment_status, null: false, default: 'pending'
      t.text :context, null: true

      t.timestamps
    end
  end
end
