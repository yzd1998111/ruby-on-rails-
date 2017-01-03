require 'test/unit'
require "rspec"
puts "hw"

a=6 

# control flow 
if a==5 
    puts "shut"
else
    puts "up"
end

while a<10
    puts "shit"
    a+=1
end

until a>50
    puts "bullshit"
    a+=1 
end 
puts a 
puts "ok" if a==51


times= 2 
times*=2 while times<100 
puts times 


puts nil==true

if String === "bb" 
    puts "ok" 
end 

age = 123

case 
    when age >= 55 
        puts "asd"
    when 1==0
        puts "asdad"
    else 
        puts "default"
end 

name ="stu"
case name 
    when 'ssss' then puts "stsss"
    when /s/i then puts "stupid pig"
end 


for i in 12..23
    puts i 
end

# function part 
def stupid()
    puts "bbbbbb"
end 

def add(one,two)
    sad= one+two
    return sad 
end 

def choice(str)
    if str == "sss"
        return str 
    elsif str=="aaa" 
        return "%dge nai zi" %2
    elsif str.to_i.zero?
        puts "%d he shang"%str.to_i
        return "aha"
    else 
        return (2 and 1) 
    end
end 
stupid()

# recursion

def power(base, pow)
    if pow==0
        return 1 
    else
        return base*power(base,pow-1)
    end 
end

def factorial(n)
    return n==0? 1: n*factorial(n-1)
end 

def onePara(first,*numbers,another)
    return "onepara%d"%numbers.max
end 
puts onePara('fuck you',2,5,7,9,"asdasdasd")
puts add(5,10)
puts choice("12")
puts factorial(4)
puts power(2,3)



# blocks 

2.times {puts "sttttt"}


5.times do|index|
    if (index > 0)
        puts index
        puts "asdasdsadasdasdasdasdasdasda"
    end 
end 

def two_times_implicit()
    return "nno blocks" unless block_given?
    yield 
    yield
    yield
end 

def two_times_explicit(&block22)
    return "no block at all" if !block_given? 
    block22.call
    block22.call
end 
puts two_times_implicit{puts "helo"}
puts two_times_explicit {puts "ni hao a "}

####
#file io 
####

# begin 
#     File.foreach('test1.txt') do |line|
#         puts line 
#         p line 
#         p line.chomp
#         p line.split 
#     end
# rescue Exception =>err
#     puts err.message
#     puts 'not existing'
# end

# if File.exist? 'test.txt'
#      File.foreach('test.txt') do |line|
#         puts line 
#         p line 
#         p line.chomp
#         p line.split 
#     end
# end


if File.exist? 'test.txt'
    File.open("test.txt","w") do |file|
        file.puts "hao da"
        file.puts "de xiong"
    end 
end 

puts ENV["EDITOR"]



#string ####
######

def multiply(one, two)
    return "#{one} multiplied by #{two} equals #{one*two}"
end 
puts multiply(5,3)

def longStr()
    return %Q{asdasdsadasdasdasdasdasdasdasad
        asdasdasd}
end 

puts longStr()


my_name=" bullshit"
puts my_name.lstrip.capitalize

cur_weather =%Q{bullshit 
                man}
cur_weather.lines do |line|
    line.sub! 'bullshit','rainy'
    puts "#{line.strip}"
end 

puts "hhhhhhh".include?"h"

my_name=my_name.to_sym     
puts my_name

####### array ######

arr1 = %w("wawww" "bbbb" "ccc")
arr2= [23,4,5,6] 
puts arr1[-3,3]
puts arr2[1..3]
# puts arr1.join("baba")

# arr1.push("22")
# puts arr1
# arr1.pop()
# puts arr1
arr1.reverse!
puts arr1

stack= [] 
stack.push(11,22,55,5)
# puts stack.pop()
puts stack.shift()
puts 'fenge'
puts stack.pop()
puts "zai fen"
puts stack
puts "asdasd"
a = [2,3,4,5,6,1,2,4,7,9,8,10]
a= a.sort!.reverse!
puts a.sample

a[15]=22
puts a 

a.each { |num| print num}
puts #
a.each do |num|
    print num 
end 
puts "bbb"
new_arr = a.select{ |num2| num2!=nil and num2>3 }
           .reject { |num3| num3.even?}
new_arr2= new_arr.map {|x| x*2+1}
puts new_arr, new_arr2

(1...10).each { |num| puts num}

some_range = 1..3 
puts some_range.include? 3 
puts some_range.max

puts (1...10) ==5.3
puts ("k"..."z").to_a.sample(2)

age =65
case age 
    when 0..12 then puts "ssss"
    when 13..99 then puts "bbbb"
    else puts "vvvvv"
end 

editor_dict= {"abc"=>2, "bbb"=>5,"ccc"=>6}
puts editor_dict.length
puts editor_dict["abc"]

editor_dict["abc"]=5555
puts #
puts editor_dict["abc"]

editor_dict.each_pair do |key,val|
    puts "key: #{key} the value #{val}"
end 
editors="chi chi hao hao"
editor_dict3= Hash.new(0)
editors.split.each do |word|
    editor_dict3[word]+=1 
end 
puts editor_dict3["aa"]

def adjust_color (props = {fore: "red", back: "white"})
    puts "fore #{props[:fore]}" if props[:fore]
    puts "back #{props[:back]}" if props[:back]
end 

puts adjust_color
adjust_color(back:"bbbbb",fore: "aaaaa")

a = { :one2 => "one"}
puts a
puts ({ :five=>"five"})


num_arr=(1..10000).to_a 

num_arr=num_arr.select {|num| num%3==0}
       .reject {|num2| (num2<5000)==false}
num_arr.sort!.reverse!
puts num_arr



########## OOP programming 
###############


class Person 
   
   attr_accessor :name   
   attr_reader :age 

    def initialize(name222, ageVar)
        @name = name222 
        self.age = ageVar 
        puts age
    end 

  
    def self.call_Time
        @@times_called ||= 0     
        @@times_called+=1 
    end 

    def self.double(var)
        call_Time
        var=var*2 
         return var 
    end 

    def age= (new_age)
        @age ||= 5 
        @age = new_age unless new_age > 120
    end 


    def get_info()
        @additional_info ="Interesting"
        "Name: #{@name}, age #{@age}"
    end 

    # def get_name()
    #     return @name 
    # end 


    # def name= (new_name)
    #     @name=new_name 
    # end 
end 

def Person.triple(var)
    call_Time
    var=var*3 
    return var
end

pp1=Person.new("kim",130)
puts "myage is #{pp1.age}"
pp1.age=15
puts pp1.age
pp1.age=150
puts pp1.age

puts Person.double(200)
puts Person.call_Time


# buggy = Person.new("JOE",14)
# puts buggy.instance_variables 
# puts buggy.get_info
# buggy.name="vibration"
# puts buggy.name

# class Car
#     attr_accessor :name, :age
#     def initializer()
#         end
# end
# person2=Car.new()
# puts person2.name
# person2.name="asd"
# puts person2.name




class Dog 
    def bark 
        return "bark aaa"
    end 

    def self.bb
        return "awooo"
    end
end 

class SmallDog < Dog 
    def bark 
        return "bark bbb"
    end
end 

dog1=Dog.new 
dog2=SmallDog.new 

puts Dog.bb
puts dog1.bark 
puts dog2.bark


##########


module America 
    class Dog 
        def bark 
            return "america bark bark"
        end 
    end 
end 

module Uk
    def beat 
        return "beat beat"
    end 

    class Dog 
        def bark 
            return "uk bark bark"
        end 
    end 
end 

class SuperDog
    include Uk
end 

maxx  = America::Dog.new
maxx2 = Uk::Dog.new
ma =SuperDog.new


puts maxx.bark
puts maxx2.bark
puts ma.beat

class Player 
    attr_reader :name, :age, :skill_level
    def initialize(name,age,skill_level)
        @name=name
        @age=age
        @skill_level=skill_level
    end 

    def to_s()
        return "#{@name}: #{@skill_level}, #{@age}"
    end 
end 

class Team
    include Enumerable 
    attr_accessor :name, :players 
    def initialize(name)
        @teamName=name
        @players =[] 
    end 

    def add_players (*eachPlayer)
        @players+=eachPlayer 
    end 

    def to_s 
        return "#{@teamName} : #{@players.join(",")}"
    end 

    def each 
        @players.each {|player| yield player}
    end 
end 

player1=Player.new("Bob",13,5)
player2=Player.new("Bob2",55,8)
player3=Player.new("Bob3",44,9)
player4=Player.new("Bob4",22,1)
player5=Player.new("Bob5",21,2)

red_team=Team.new("Red")
red_team.add_players(player1,player2,player3,player4,player5)

good_Player = red_team.select {|player| (10...30)===player.age }
                        .reject {|player| player.skill_level<5}
puts good_Player
###require_relative import file 

#########################
###scope###
#########


glob="outside"

class MyClass 
    def my_method 
        glob="outide2"
        puts glob 
        puts local_variables 
    end 
end 

puts glob 
obj = MyClass.new
puts #
obj.my_method
puts 2


cON = 22 
puts cON 
cON = 33
puts cON 


arr = [5,4,1]
cur_Number = 10 
arr.each do |cur_Number|
    # cur_Number +=10
    puts cur_Number.to_s+" "
end 
### different through naming 

arr.each do |cur_Number2|
    some_var = 10
    cur_Number=100
    puts cur_Number.to_s+" "
end 

puts cur_Number 


####### access control 

class Car 
    def initialize(speed,comfort)
        @rating = speed * comfort 
    end 

    def rating 
        return @rating 
    end 

    private 
    def test1 
        return "private"
    end
    protected 
        def test2 
            return "protected"
        end 
    public 
        def test3
            return "public"
        end 
         def test4
            return "public"
         end 
    private :test4
end 

class Person
    def initialize(age)
        self.age = age 
        puts my_age 
    end 

    private 
        def my_age 
            return @age 
        end 

        def age= (age)
            @age=age
        end 
    end


Person.new(25) 



######## unit testing 

# class CalculatorTest < Test::Unit::TestCase
#     def setup
#         @calc=Calculator.new('test')
#     end 

#     def test_addition 
#         assert_equal(4,@calc.add(2,2))
#     end

#     def test_subtraction  
#         assert_equal(2,@calc.add(4,2))
#     end

#     def test_divison 
#         assert_equal(1,@calc.add(2,2))
#     end

#     def test_zeroDivison
#         assert_raise ZeroDivisionError do 
#             @calc.divide(1,0)
#         end 
#         end
# end 

### should be in test file rspec test
# describe Calculator do 
#     before {@Calculator=Calculator.new("rspec Calculator")}

#     it "should add 2 num correct" do 
#         expect(@calculator.add(2,2)).to eq 4
#     end 

#     it "subtract correctly" do 
#         expect(@calculator.subtract(2,2)).to eq 0 
#     end 

#     it "odd + odd" do 
#         expect(@calculator.add(3,3)).to be_even
#     end

#     it "odd + odd" do 
#         expect(@calculator.add(3,3)).not_to be_odd
#     end 


#     ## rspec --format documentation prints message of tests 
# end 
### rspec test 