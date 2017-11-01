class Phonebook < ApplicationRecord
   belongs_to :user
   validates_numericality_of :number, :message=>"正确输入号码"
end
