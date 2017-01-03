# some_var="false" 
# another_var=nil
# case 
#     when some_var=="pink elephant"
#         puts "dont think about the pink elephant"
#     when another_var.nil?
#         puts "question mark"
#     when some_var== false 
#         puts "looks like this one"
#     else 
#         puts "i guess nothing match"
# end 


# ##### hw 2 


# class Person22 
#     def initialize(firstName,lastName)
#         self.firstName=firstName 
#         self.lastName=lastName 
        
#     end 

#     def firstName=(newfirstName)
#         @firstName=newfirstName
#     end 

#     def lastName=(newLastName)
#         @lastName=newLastName
#     end 

#     def lName()
#         return @lastName
#     end 

#     def fName()
#         return @firstName
#     end 

#     def self.GetPeople(*peoples)
#         @@people||=[]
#         @@people+=peoples 
       
#         end 

#     def to_s()
#         return "hello Mr #{@firstName} #{@lastName}"
#     end 

#     def self.search(findName)
       
#         pI=@@people.select {|eachPerson| findName===eachPerson.lName} 
#         result= pI[0]
#         return result
        
#     end 
# end 

# person1 = Person22.new("xx","yy")
# person2 = Person22.new("aa","bb")
# person3 = Person22.new("cc","dd")
# person4 = Person22.new("ee","ff")

# Person22.GetPeople(person1,person2,person3,person4)
# puts Person22.search("yy")




hhh={"a"=>1,"b"=>2}

hhh.each do |chars,key|
    puts hhh[chars]
    # puts hhh[chars]
end






