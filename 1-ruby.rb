# variables and strings

some_variable = "thisisstring"

some_variable.gsub("this", "it")
some_variable.upcase

"Interpolation #{some_variable} looks nice"

############################################

# if

if name.end_with?("m")
  score = 2
else
  score = 4
end

if value == 5
  "*"
elsif value == 13
  "!"
end

############################################

# def

def my_method(value)
  if value.zero?
    cats = 1
  else
    cats = value * 2
  end

  cats
end

############################################

# class

class User
  def initialize(name)
    @name = name
  end

  def nickname
    @name.slice(0, 3).upcase
  end
end

def Admin < User
  def nickname
    "ADMIN-#{super}"
  end
end

############################################

# array

array = ["cat", "dog", "turtle"]
array.first

numbers = [33, 1, 87, 21]
numbers.max

############################################

# hash

my_hash = { "cat" => 2, "dog" => 3, "turtle" => 10 }
my_hash["cat"]

############################################

# symbol

a = :user

{ :class => "main-container", :id => "content", :tag => "div" }
{ class: "main-container", id: "content", tag: "div" }
