class CreateNinjas < ActiveRecord::Migration
  def change
    create_table :ninjas do |t|
      t.string :ninja_name
      t.text :ninja_description

      t.timestamps null: false
    end
  end
end
