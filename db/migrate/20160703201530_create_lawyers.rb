class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.string :practice_areas
      t.integer :years_experience

      t.timestamps null: false
    end
  end
end
