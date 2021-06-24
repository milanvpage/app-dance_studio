class AddColumnDateAndTimeToDanceClasses < ActiveRecord::Migration[5.2]
  def change
    add_column :dance_classes, :date, :date_select
    add_column :dance_classes, :time, :select_time
  end
end
