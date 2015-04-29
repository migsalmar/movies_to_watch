class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.boolean :paid

      t.timestamps

    end
  end
end
