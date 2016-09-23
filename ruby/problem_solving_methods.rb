# Method with 2 arguments, array and integer
# find length of array
# initialize a variable
# loop incrementing variable while using it to reference
# array and check

def search_array(list, number)
  count=0
  while count<=list.length
    if list[count]==number
      return count
    else
      count+=1
    end
  end
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)

# Initialize with 0 and 1
# account for fib(1 and 2)
# count initialized at 2 if it doesn't match above case

def fib(number)
  number=number.to_i
  sequence=[]
  count=2
  if number==1
    sequence.push(0)
    p sequence
  elsif number==2
    sequence.push(0,1)
    p sequence
  else
    sequence.push(0,1)
    while count<number
      sequence[count]=sequence[count-1]+sequence[count-2]
      count+=1
    end
    p sequence[-1]
  end
end

fib(2)
fib(100)

# Pass in an array to our method
# Filter through array index by index number with incrementation variable
# Compare current index with following index > , <
# After comparison switch values if following index is greater
# Continue through entire array
# Loop filter method back to first index
# repeat bubble sort as long as unsorted
#??? if no switches made bubble sort complete 
array_to_sort = [ 35 , 14, 98, 77, 2, 55, 63, 22, 31, 64, 5 ]
def bubble_sort(array)
  counter = 0
  anti_counter = array.length - 1
  while anti_counter > 1
    # While array is unsorted
    while counter < anti_counter
    # While loop for comparison
      if array[counter] > array[counter + 1]
        number1 = array[counter]
        number2 = array[counter + 1]
    # can now assign new positions
        array[counter] = number2
        array[counter + 1] = number1
        counter += 1
      else
        counter += 1
      end 
    end
    anti_counter -= 1
    counter = 0
  end
  p array
end
bubble_sort(array_to_sort)