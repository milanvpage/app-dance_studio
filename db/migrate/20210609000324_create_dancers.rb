class CreateDancers < ActiveRecord::Migration[5.2]
  def change
    create_table :dancers do |t|
      t.string :name
      t.integer :age 
      t.string :email
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
