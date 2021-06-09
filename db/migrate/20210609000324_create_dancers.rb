class CreateDancers < ActiveRecord::Migration
  def change
    create_table :dancers do |t|

      t.timestamps null: false
    end
  end
end
