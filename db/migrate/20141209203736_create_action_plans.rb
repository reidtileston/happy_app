class CreateActionPlans < ActiveRecord::Migration
  def change
    create_table :action_plans do |t|
      t.integer :user_id
      t.text :message

      t.timestamps

    end
  end
end
