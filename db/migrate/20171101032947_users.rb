class Users < ActiveRecord::Migration[5.1]
  def self.up
    create_table :users do |t|
      t.column :name ,:string
      t.column :password ,:string
      t.column :created_at,:timestamp 
    end
  end

  def self.down
    drop_table :users
  end
end
