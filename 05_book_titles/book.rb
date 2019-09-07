
class Book
  attr_reader :title
  def title=(input)
    inputArr = input.split(' ')
    i = 0
    while i < inputArr.length
      if i == 0
        inputArr[i].capitalize!
      elsif inputArr[i] != 'and' && inputArr[i] != 'in' && inputArr[i] != 'the' && inputArr[i] != 'of' && inputArr[i] != 'a' && inputArr[i] != 'an'
        inputArr[i].capitalize!
      end
    i += 1
    end
    @title = inputArr.join(' ')
   #@title = input.split.map!(&:capitalize).join(' ')
  end
end


