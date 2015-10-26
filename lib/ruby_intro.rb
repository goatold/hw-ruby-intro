# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  arr.inject :+
end

def max_2_sum arr
  sum arr.max(2)
end

def sum_to_n? arr, n
  arr.combination(2).any? {|a| sum(a) == n}
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  !(s.empty? || s =~ /^[^a-z]/i || s =~ /^[aeiou]/i)
end

def binary_multiple_of_4? s
  s =~ /^([01]*00|0)$/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, "invalid isbn: #{isbn}" if isbn.empty?
    raise ArgumentError, "invalid price: #{price}" if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    sprintf "\$%.2f", @price
  end
  
  attr_accessor :isbn, :price
end
