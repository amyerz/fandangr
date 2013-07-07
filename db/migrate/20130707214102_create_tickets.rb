class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :showing_id
      t.integer :user_id
      t.string :row
      t.integer :column

      t.timestamps
    end
  end
end
