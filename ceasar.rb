def caesar_cipher(str, counter)
  array = str.split("")
  array.map! {|digit| count(digit.ord, counter).chr}
  return array.join("")
end

def count(item, counter)
  if counter > 0 
    then counter.times do 
      if item == 122 
        then item = 97 
      elsif item == 90
        then item = 65   
      elsif item < 65 || item > 122
        then item = item
      else item +=1
      end
    end
      return item
    else (counter.abs).times do 
      if item == 97 
        then item = 122 
      elsif item == 65
        then item = 90   
      elsif item < 65 || item > 122
        then item = item
      else item -=1
      end
    end
      return item
  end
end

p caesar_cipher("What is up!", -26)
p caesar_cipher("What is up!", 6)
p caesar_cipher("What is up!", -255)