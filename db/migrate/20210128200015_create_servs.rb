class CreateServs < ActiveRecord::Migration[6.1]
  def change
    create_table :servs do |t|
      t.string :name
      t.string :info

      t.timestamps
    end
  end
end
