class AddColumnsToDanceClassesForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_column :dance_classes, :studio_id, :integer
    add_column :dance_classes, :style_id, :integer
  end
end
