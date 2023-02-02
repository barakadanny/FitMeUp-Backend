class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :full_name, null: false
      t.date :date_of_birth, null: false
      t.text :address, null: false
      t.string :email_address, null: false
      t.string :password_digest, null: false
      t.string :phone_number, null: false
      t.text :health_info, null: true
      t.decimal :height_in_meter, null: true
      t.decimal :weight_in_kg, null: true
      t.string :profile_pic, null: true

      t.timestamps
    end
  end
end
