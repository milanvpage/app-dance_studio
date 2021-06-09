class CreateDanceClasses < ActiveRecord::Migration
  def change
    create_table :dance_classes do |t|
      t.string :style
      t.string :level
      t.timestamps null: false
    end
  end
end
