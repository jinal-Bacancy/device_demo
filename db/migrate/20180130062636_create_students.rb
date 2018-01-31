class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.text :name
      t.string :rollno
      t.string :email
      t.string :phoneno

      t.timestamps
    end
  end
end
