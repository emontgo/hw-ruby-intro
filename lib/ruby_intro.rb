# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sum = 0
	for i in arr
		sum += i
	end
	
	sum
end

def max_2_sum arr
	
	if arr.size > 1
		a = arr.max
		arr.delete_at(arr.index(a))
		b = arr.max

		a + b
	elsif arr.size == 1
		arr.max
	else
		0
	end
end

def sum_to_n? arr, n
	val = false
	for i in arr
		for j in arr
			if j != i
				if i + j == n
					val = true
				end
			end
		end
	end
	
	val
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
	consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
	val = false
	baseTen = 0
	
	if consonants.include? s[0]
		val = true
	end
	
	val
end

def binary_multiple_of_4? s
	nums = "01"
	val = false
	
	print(s.count(nums))
	
	# If score is higher than 0, then some of the characters were not 1 or 0.
	if s.count(nums) == s.length
		baseTen = s.to_i(2)
		
		if baseTen % 4 == 0
			val = true
		end
	end
	
	val
end

# Part 3

class BookInStock
	def initialize(is, pri)
		@isbn = is
		@price = pri
	end
	
	def price_as_string
		newPrice = "$" + @price.round(2).to_s()
		
		
		if newPrice[-2] == "."
			newPrice = newPrice + "0"
		end
		
		newPrice
	end
end

#print(sum([1,2,3]))
#print(max_2_sum([1]))
#print(sum_to_n?([],26))
#print(hello("ethan"))
#print(starts_with_consonant?("jthan"))
#print(binary_multiple_of_4?("1000"))

#book = BookInStock.new("12345", 451.30)
#print(book.price_as_string())