class AddTeacherAndStudioToDanceClasses < ActiveRecord::Migration[5.2]
  def change
    add_column :dance_classes, :teacher, :string
    add_column :dance_classes, :studio, :string
  end
end
