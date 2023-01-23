class CreateTrainerSpecialities < ActiveRecord::Migration[7.0]
  def change
    create_table :trainer_specialities do |t|
      t.references :trainer, references: :trainers, null: false, foreign_key: { to_table: :trainers }
      t.references :speciality,references: :specialities, null: false, foreign_key: { to_table: :specialities }

      t.timestamps
    end
  end
end
