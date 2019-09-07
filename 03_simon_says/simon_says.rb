def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, x = 2)
  ((str + ' ') * x).strip
end

def start_of_word(str, num)
  arr = str.chars
  newArr = Array.new
  i = 0
  while i < num
    newArr.push(arr[i])
    i = i + 1
  end
    newArr.join
end

def first_word(str)
  arr = str.split(" ")
  arr[0]
end

def titleize(str)
  arr = str.split(' ')
  newArr = Array.new
  i = 0
  while i < arr.length
    if i == 0
      newArr.push(arr[i].capitalize)
    elsif i > 0
      if arr[i] == 'and' || arr[i] == 'the' || arr[i] == 'over'
        newArr.push(arr[i])
      else
        newArr.push(arr[i].capitalize)
      end
    end
    i = i + 1
  end
  newArr.join(' ')
end
