# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  sum = 0
   arr.each{|e| sum+=e}
  return sum
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  end

  arr.product(arr).each do |e| 
    if e.length == 2 and e.reduce(:+) == n and e.first != e.last
	return true
    end
  end
  return false
end

# Part 2
def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length < 1 or !(s[0] =~ /[[:alpha:]]/)
     return false
  end

  arr = ['a', 'A', 'e', 'E', 'i', 'I', 'o', 'O', 'u', 'U'] 
  startsWithVowel = arr.any? {|vowel| vowel == s[0]}
  return !startsWithVowel
end

def binary_multiple_of_4? s
  arr = s.split('')
  arr = arr.reverse
  
  if s.length == 0
    return false
  end

  sum = 0
  elementCount =0
  arr.each do |c|
     if c != '1'
        if c != '0'
	  return false
	end
     end
     if c == '1'
	sum += 2 ** elementCount
     end
     elementCount += 1
  end
 
  if sum % 4 == 0
     return true
  end
  return false
end

# Part 3
class BookInStock

  def initialize(isbn, price)
     if isbn.length == 0
	raise ArgumentError.new("Empty ISBN")
     end
     if price <= 0
	raise ArgumentError.new("Price is <= 0")
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

  def price
     @price
  end

  def price=(price)
     @price = price
  end

  def price_as_string
     priceString = @price.to_s
puts priceString
     size = priceString.length
     if priceString[size - 3] == '.'
        result = "$" + priceString
     elsif priceString[size - 2] == '.'
	result = "$" + priceString + '0'
     else
	result = "$" + priceString + ".00"
     end

     return result
  end

end
