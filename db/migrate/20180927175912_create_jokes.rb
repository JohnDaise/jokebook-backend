class CreateJokes < ActiveRecord::Migration[5.2]
  def change
    create_table :jokes do |t|
      t.string :joke
      t.integer :user_id

      t.timestamps
    end
  end
end
