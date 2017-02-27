class Address < ActiveRecord::Base

  def address_number
     address.try(:number)
   end

   def address_number=(number)
     self.address = Address.find_by_number(number) if number.present?
   end

end
