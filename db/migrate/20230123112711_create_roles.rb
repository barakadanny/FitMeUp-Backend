class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.references :user, references: :users, null: false, foreign_key: { to_table: :users }
      t.string :role, null: false, default: 'user'
      t.text :security_question, null: true
      t.text :security_answer, null: true

      t.timestamps
    end
  end
end
