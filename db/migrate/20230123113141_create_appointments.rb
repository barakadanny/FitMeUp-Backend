class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :trainer, null: false, foreign_key: true
      t.date :appointment_date
      t.string :appointment_status
      t.text :context

      t.timestamps
    end
  end
end
