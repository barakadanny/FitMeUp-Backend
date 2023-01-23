class CreateTrainerSpecialities < ActiveRecord::Migration[7.0]
  def change
    create_table :trainer_specialities do |t|
      t.references :trainer, null: false, foreign_key: true
      t.references :speciality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
