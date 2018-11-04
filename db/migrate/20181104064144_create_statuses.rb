class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.string :value
      t.string :user_id
      t.string :hospital_id
      t.string :image_id

      t.timestamps
    end
  end
end
