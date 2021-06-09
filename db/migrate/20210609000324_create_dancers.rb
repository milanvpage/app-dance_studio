class CreateDancers < ActiveRecord::Migration
  def change
    create_table :dancers do |t|
      t.string :name
      t.integer :age 
      t.timestamps null: false
    end
  end
end
