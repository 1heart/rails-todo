class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :note
      t.date :complete

      t.timestamps
    end
  end
end
