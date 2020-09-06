# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for num in arr
    sum =sum + num
  end
  return sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  res = arr.sort[-1] + arr.sort[-2]
  return res
end

def sum_to_n? arr, n
  dic = Hash.new
  if arr.length == 0
    return false
  end
  for num in arr
    complement = n - num
    if dic[complement] == true
      return true
    else
      dic[num] = true
    end
  end
  return false
end

# Part 2

def hello(name)
	str = 'Hello, '
	str += name
	return str
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  s = s.downcase
  dic = "bcdfghjklmnpqrstvwxyz"
  if dic.include?(s[0])
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  if s.length == 1 and s[-1] == '0'
    return true
  end
  if s[-1] == '0' && s[-2] == '0' and s.count('1') + s.count('0') == s.length
    return true
  end
end
# Part 3
class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if isbn.length == 0
      raise ArgumentError.new("Not valid isbn")
    end
    if price <= 0
      raise ArgumentError.new("Not valid price")
    end
  end

  def isbn#getter
    @isbn
  end

  def price#getter
    @price
  end

  def isbn=(i)#setter
    @isbn = i
  end
  
  def price=(p)#setter
    @price = p
  end

  def price_as_string
    return '$%.2f' % @price
  end

end
