class AddDoAdteToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :do_date, :date
  end
end
