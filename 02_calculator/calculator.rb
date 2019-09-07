def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  arr.sum
end

def multiply(*args)
  num1 = 1
  answer = 0
  args.each do |num|
    answer = num1 * num
    num1 = answer
  end
  return answer
end

def power(a, b)
  a**b
end

def factorial(a)
  answer = 1
  if a == 0
    return 1
  else
    while a > 0
      answer = answer * a
      a = a - 1
    end
  return answer
  end
end
