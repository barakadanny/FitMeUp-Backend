class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.references :user, references: :users, null: false, foreign_key: { to_table: :users }
      t.string :role
      t.text :security_question
      t.text :security_answer

      t.timestamps
    end
  end
end
