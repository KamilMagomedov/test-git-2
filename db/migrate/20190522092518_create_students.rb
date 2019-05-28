class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :email
      # t.string :strign
      t.string :first_name
      # t.string :string
      t.string :last_name
      # t.string :string
      t.string :username
      # t.string :string
      t.string :age
      t.string :integer
      t.string :major
      # t.string :string
      t.string :school
      # t.string :string
      t.string :address
      # t.string :string

      t.timestamps
    end
  end
end
