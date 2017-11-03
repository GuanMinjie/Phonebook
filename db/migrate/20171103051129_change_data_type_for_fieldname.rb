class ChangeDataTypeForFieldname < ActiveRecord::Migration[5.1]
  def change
change_column :phonebooks, :number, :string
  end
end
