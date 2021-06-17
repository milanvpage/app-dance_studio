class CreateDanceClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :dance_classes do |t|
      t.string :style
      t.string :level
      t.text :description
      t.timestamps null: false
    end
  end
end
