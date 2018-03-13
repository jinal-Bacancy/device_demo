class AddDetailsToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :DOB, :date
    add_column :admins, :address, :string
    add_column :admins, :pname, :string
  end
end
