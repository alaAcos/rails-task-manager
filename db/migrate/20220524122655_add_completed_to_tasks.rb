class AddCompletedToTasks < ActiveRecord::Migration[6.1]
  def change
    t.boolean :completed, default: false
  end
end
