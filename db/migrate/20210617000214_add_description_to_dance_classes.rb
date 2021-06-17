class AddDescriptionToDanceClasses < ActiveRecord::Migration[5.2]
  def change
    add_column :dance_classes, :description, :string
  end
end
