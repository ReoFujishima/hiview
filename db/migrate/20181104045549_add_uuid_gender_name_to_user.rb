class AddUuidGenderNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uuid, :string
    add_column :users, :gender, :string
    add_column :users, :name, :string
  end
end
