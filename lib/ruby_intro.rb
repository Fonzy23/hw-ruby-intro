# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
  else
    num = 0
    arr.each {|a| num += a }
    return num
  end
  # YOUR CODE HERE
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    newarr = arr.sort {|x,y| y<=> x}
    return newarr[0] + newarr[1]
  end
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  if arr.length == 0 || n == 0
    return false
  else
    arr.permutation(2).any? { |a,b| a + b == n}
  end
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty?
    return false
  elsif (/[^aeiou]/ =~ s[0].downcase && /[a-z]/ =~ s[0].downcase)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s == "0"
    return true
  else
    return /^[10]*00$/.match(s) != nil
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize isbn, price
    if isbn.empty? || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end

  def price_as_string
    format "$%.2f", @price
  end
# YOUR CODE HERE
end
