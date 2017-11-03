class Phonebooks < ActiveRecord::Migration[5.1]
  def  self.up
    create_table :phonebooks do |t|
      t.column :linkman, :string
      t.column :user_id, :integer
      t.column :number, :string
      t.column :created_at,:timestamp 

    end
  end
   def self.down
      drop_table :phonebooks
   end

end
