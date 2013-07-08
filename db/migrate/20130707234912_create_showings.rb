class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.integer :movie_id
      t.string :time

      t.timestamps
    end
  end
end
