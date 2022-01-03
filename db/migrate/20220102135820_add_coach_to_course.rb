class AddCoachToCourse < ActiveRecord::Migration[6.1]
  def change
    add_reference :courses, :coach, null: true, foreign_key: true
  end
end
