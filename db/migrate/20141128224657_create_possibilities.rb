class CreatePossibilities < ActiveRecord::Migration
  def change
    create_table :possibilities do |t|
      t.integer :answer_id
      t.integer :video_id

      t.timestamps

    end
  end
end
