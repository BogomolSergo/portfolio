class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :sender_name
      t.string :email
      t.string :subject
      t.text :text
      t.timestamps
    end
  end
end
