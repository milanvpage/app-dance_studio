class CreateDancersClasses < ActiveRecord::Migration
  def change
    create_table :dancers_classes do |t|

      t.timestamps null: false
    end
  end
end
