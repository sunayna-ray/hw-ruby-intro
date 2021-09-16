# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum(0)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length()==0
    return 0
  elsif arr.length()==1
    return arr[0]
  else
    arr1=arr.sort.reverse!
    return arr1[0]+arr1[1]
  end
      
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
    return false
  end
  for e in 0..arr.length-1
    f=arr.find_index(n-arr[e])
    if f!=e && f!=nil
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return (s=~/\A(?=[^aeiou])(?=[a-z])/i) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.scan(/^[01]+$/).length==0
    return false
  end
  if (s.to_i(2) % 4 ==0)
    return true
  else 
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if (isbn.eql?("") || price <= 0)
      raise ArgumentError.new "ArgumentError"
    end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  def price
    @price
  end
  
  def price_as_string
    return "$#{'%.2f' % price}"
  end
  
end
