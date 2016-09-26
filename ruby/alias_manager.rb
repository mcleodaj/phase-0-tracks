$data_array=[]

def user_input
  puts "What name would you like encoded (First and last only, type exit to quit)"
  name=gets.chomp
  if name=="exit"
    puts "Thank you for using our encoding program"
    data_print
  elsif name==""
    user_input
  else
    data_store(name)
    name_swap(name)
    user_input
  end
end

def data_store(string)
  $data_array.push(string)
end

def data_print
  iterations=($data_array.length+1)/2
  count=0
  while count<iterations
    if count==0
      p ("#{$data_array[1]} is actually known as #{$data_array[0]}")
      count+=1
    else
      encode_index=(count*2)+1
      simple_index=count*2
      p ("#{$data_array[encode_index]} is actually known as #{$data_array[simple_index]}")
      count+=1
    end
  end
end


def name_swap(string)
  string_array=string.split(" ")
  new_first=string_array[1].downcase
  new_last=string_array[0].downcase
  encoded_first=name_change(new_first)
  encoded_last=name_change(new_last)
  full_name=encoded_first+" "+encoded_last
  data_store(full_name)
  p full_name
end

def name_change(name)
  vowels=["a","e","i","o","u"]
  name_array=name.chars
  count=0
  for i in name_array
    if vowels.include?(i)
      place=vowels.index(i)
        if place<4
          i=vowels[place+1]
          name_array[count]=i
        else
          i=vowels[0]
          name_array[count]=i
        end
      count+=1
    elsif i=="z"
      i="b"
      name_array[count]=i
      count+=1
    else
      test_i=i.next
      if vowels.index(test_i)==nil
        i=test_i
        name_array[count]=i
      else
        i=test_i.next
        name_array[count]=i
      end
      count+=1
    end
  end
  new_name=name_array.join
  new_name=new_name.capitalize
  return new_name
end

user_input