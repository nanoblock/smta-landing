class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email, null: false
      t.timestamp :date, null: false
    end
  end
end
