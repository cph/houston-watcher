class CreateCheckins < ActiveRecord::Migration[5.0]

  def change
    create_table :checkins do |t|
      t.integer :project_id

      t.integer :status
      t.jsonb :info

      t.timestamps
    end
  end

end
