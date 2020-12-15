class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :title,    null: false
      t.date :start_on,   null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end