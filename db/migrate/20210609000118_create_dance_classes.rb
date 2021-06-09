class CreateDanceClasses < ActiveRecord::Migration
  def change
    create_table :dance_classes do |t|

      t.timestamps null: false
    end
  end
end
