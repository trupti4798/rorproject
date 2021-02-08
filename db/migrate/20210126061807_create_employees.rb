class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :dept
      t.integer :salary
      t.string :email
      t.integer :mobile_no
      t.string :gender
      t.string :addr

      t.timestamps
    end
    add_index("employees","name")
  end
end
