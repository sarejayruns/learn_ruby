def translate(str)

  indices = Array.new

  str.each_char.with_index do |space, index|
    if space == ' '
      indices << index
    end
  end

  #need to address each word individually
  
  if str.include?(' ')
    arr = str.split(' ')
    i = 0


    
    while i < indices.length + 1 #2 (3 and 8)
      if arr[i].to_s[0] != 'a' && arr[i].to_s[0] != 'e' && arr[i].to_s[0] != 'i' && arr[i].to_s[0] != 'o' && arr[i].to_s[0] != 'u'
        if arr[i].to_s[0] == 'q' && arr[i].to_s[1] == 'u'
          #2.times do
            arr[i] << arr[i].to_s[0]
            arr[i].to_s[0] = ''
          #end
        elsif arr[i].to_s[1] == 'q' && arr[i].to_s[2] == 'u'
          2.times do
            arr[i] << arr[i].to_s[0]
            arr[i].to_s[0] = ''
          end
        elsif arr[i].to_s[1] != 'a' && arr[i].to_s[1] != 'e' && arr[i].to_s[1] != 'i' && arr[i].to_s[1] != 'o' && arr[i].to_s[1] != 'u'
          if arr[i].to_s[2] != 'a' && arr[i].to_s[2] != 'e' && arr[i].to_s[2] != 'i' && arr[i].to_s[2] != 'o' && arr[i].to_s[2] != 'u'
            2.times do
              arr[i] << arr[i].to_s[0]
              arr[i].to_s[0] = ''
            end
          end
          #2.times do
            arr[i] << arr[i].to_s[0]
            arr[i].to_s[0] = ''
          #end
        end
        arr[i] << arr[i].to_s[0]
        arr[i].to_s[0] = ''
      end
      i += 1
    end
    arr.map!{ |str| str + 'ay'} #add 'ay' to end of every string
    str = arr.join(' ')

  else #if no space
    if str[0] != 'a' && str[0] != 'e' && str[0] != 'i' && str[0] != 'o' && str[0] != 'u'
      if str[0] == 'q' && str[1] == 'u'
        str <<(str[0])
        str <<(str[1])
        str[0] = ''
        str[0] = ''
        str <<('ay')
      elsif str[1] == 'q' && str[2] == 'u'
        str <<(str[0])
        str <<(str[1])
        str <<(str[2])
        str[0] = ''
        str[0] = ''
        str[0] = ''
        str <<('ay')
      elsif str[1] != 'a' && str[1] != 'e' && str[1] != 'i' && str[1] != 'o' && str[1] != 'u'
        if str[2] != 'a' && str[2] != 'e' && str[2] != 'i' && str[2] != 'o' && str[2] != 'u'
        #if first 3 letters are consonants
          str <<(str[0])
          str <<(str[1])
          str <<(str[2])
          str[0] = ''
          str[0] = ''
          str[0] = ''
          str <<('ay')
        else
          str <<(str[0])
          str <<(str[1])
          str[0] = ''
          str[0] = ''
          str <<('ay')
        end
      else #if starts with 1 consonant
        str << (str[0])
        str[0] = ''
        str <<('ay')
      end
    else
      str <<('ay') #if starts with vowel, << ay
    end
  end
  str
end
