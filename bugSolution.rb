```ruby
# Solution 1: Using attr_accessor
class MyClass
  attr_accessor :value # Creates getter and setter methods
  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10
my_object.value = 20
puts my_object.value # Output: 20

# Solution 2: Using attr_reader and a setter method
class MyClass
  attr_reader :value  # Creates a getter method
  def initialize(value)
    @value = value
  end
  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10
my_object.value = 20
puts my_object.value # Output: 20

# Solution 3: Explicit setter method only
class MyClass
  def initialize(value)
    @value = value
  end
  def value
    @value
  end
  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10
my_object.value = 20
puts my_object.value # Output: 20
```