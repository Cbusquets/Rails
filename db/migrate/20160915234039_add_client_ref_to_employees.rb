class AddClientRefToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_reference :employees, :client, foreign_key: true
  end
end
