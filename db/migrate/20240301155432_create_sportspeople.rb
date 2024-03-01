class CreateSportspeople < ActiveRecord::Migration[7.0]
  def change
    create_table :sportspeople do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthdate
      t.integer :phone
      t.string :email
      t.string :team
      t.string :position

      t.timestamps
    end
  end
end
