class AddNameColumnToDanceClasses < ActiveRecord::Migration[5.2]
  def change
    add_column :dance_classes, :name, :string
  end
end
