# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do |item|
    sum += item
  end
  return sum

end

def max_2_sum arr
  # YOUR CODE HERE

  if arr == []
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr2 = []
    arr2 = arr.sort { |a, b| b<=>a }
    return arr2[0] + arr2[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  counter = false

if arr == [] && n == 0
  counter = true
elsif arr.length == 1
  counter = false
else
  for i in 0...arr.length-1
    for y in i+1...arr.length
      if arr[i]+arr[y] == n
        counter = true
        break
      end
    end
  end
end

  return counter
  #return 0

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  counter = "AEIOUaeiou"
  foo = true
  if s == '' or !letter?(s[0])
    foo = false
  else
  for i in 0...counter.length
    if s[0] == counter[i]
      foo = false
      break
    end
  end
  return foo
end
end

def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

def digit?(lookAhead)
  lookAhead =~ /[[:digit:]]/
end

def binary_multiple_of_4? s
  # YOUR CODE HERE

  if (s =~ /[[:alpha:]]/) || s == ''
    return false
  else
  if Integer(s) % 4 == 0
    return true
  end
  end


end


# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn, :price
  attr_writer :isbn, :price

  def initialize(isbn,price)

      unless isbn != ''
        raise ArgumentError.new("isbn cannot be empty")
      end
      unless price != 0
        raise ArgumentError.new("price cannot be zero")
      end
      unless price > 0
        raise ArgumentError.new("price cannot be less than zero")
      end
      @isbn = isbn
      @price = price
  end

  def price_as_string
    #price = (@price + "00").to_f
    return '$' + "%.2f" % @price
  end



end
