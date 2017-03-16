class CreateTrialRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :trial_registrations do |t|
      t.string :kid_name
      t.string :email
      t.string :phone
      t.integer :course_id
      t.integer :branch_id
      t.text :message

      t.timestamps
    end
  end
end
