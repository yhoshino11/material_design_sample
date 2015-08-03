class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :url
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
