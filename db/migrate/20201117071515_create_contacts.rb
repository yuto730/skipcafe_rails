class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name,              null:false
      t.string :url
      t.string :mail,              null:false
      t.string :mail_confirmation, null:false
      t.text   :message,           null:false

      t.timestamps
    end
  end
end
