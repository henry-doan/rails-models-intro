class ChangeNameToFirstName < ActiveRecord::Migration[5.2]
  def change
                  #Table     #Col     #new col name
    rename_column :contacts, :name, :first_name
  end
end
