class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :msgText
      t.Integer :sender_id
      t.Integer :recipient_id
    end
  end
end
