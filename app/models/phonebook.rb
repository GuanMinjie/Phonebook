class Phonebook < ApplicationRecord
   belongs_to :user
   validates :linkman ,presence:true,length:{maximum: 30}
   validates :number, presence:true,length:{maximum: 20}
end
