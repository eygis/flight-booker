class FixColumnNames < ActiveRecord::Migration[7.0]
  def change
    rename_column :passengers, :name, :passenger_name
    rename_column :passengers, :email, :passenger_email
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
