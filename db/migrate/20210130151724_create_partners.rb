class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :services
      t.string :duration
      t.string :email

      t.timestamps
    end
  end
end
