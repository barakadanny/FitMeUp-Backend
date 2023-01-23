class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name
      t.date :date_of_birth
      t.text :address
      t.string :email_address
      t.string :phone_number
      t.text :health_info
      t.decimal :height_in_meter
      t.decimal :weight_in_kg
      t.string :profile_pic

      t.timestamps
    end
  end
end
