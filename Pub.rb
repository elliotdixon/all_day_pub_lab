class Pub

attr_reader(:name, :till, :drinks)

 def initialize(name, till, drinks)
   @name = name
   @till = till
   @drinks = drinks
 end

 def pub_name()
   return @name
 end

 def pub_till()
   return @till
 end

 def pub_drinks()
   return @drinks.size
 end

 def get_drink()
   return @drinks.pop
 end


end
