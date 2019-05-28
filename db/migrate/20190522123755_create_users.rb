class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.integer :age
      t.string :major
      t.string :school
      t.string :address

      t.timestamps
    end

    drop_table :tutors
    drop_table :students
  end
end
