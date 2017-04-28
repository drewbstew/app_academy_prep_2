def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  arr.reduce(0) { |sum, num| sum + num }
end

def multiply(num1, *num2)
  products = []
  products << num1
  products << num2
  products.flatten.reduce(:*)
end

def factorial(num)
  return 1 if num == 0
  products = (1..num).to_a
  products.reduce(:*)
end
