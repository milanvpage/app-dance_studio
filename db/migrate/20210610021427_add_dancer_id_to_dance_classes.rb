class AddDancerIdToDanceClasses < ActiveRecord::Migration[5.2]
    def change
      add_column :dance_classes, :dancer_id, :integer
    end
end
