class CreatePerson < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
        t.string :email
        t.string :name
        t.string :phone_number
        
      t.timestamps
    end
  end
end
