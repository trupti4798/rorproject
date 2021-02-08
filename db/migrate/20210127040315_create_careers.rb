class CreateCareers < ActiveRecord::Migration[6.1]
  def change
    create_table :careers do |t|
      t.string :name
      t.string :dept
      t.integer :experience
      t.string :skills
      t.string :qualification
      t.string :email
      t.integer :mobile_no
      t.string :address

      t.timestamps
    end
    add_index("careers","name")

  end
end
