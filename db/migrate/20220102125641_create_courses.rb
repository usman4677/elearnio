class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.boolean :self_assignable, default: false

      t.timestamps
    end
  end
end
