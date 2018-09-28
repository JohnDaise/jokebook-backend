class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :pic_url
      t.string :bio

      t.timestamps
    end
  end
end
