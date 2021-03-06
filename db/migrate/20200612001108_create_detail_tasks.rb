class CreateDetailTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :detail_tasks do |t|
      t.string :text
      t.date :date
      t.float :time_duration
      t.references :sub_task, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
