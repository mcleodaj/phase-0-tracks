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