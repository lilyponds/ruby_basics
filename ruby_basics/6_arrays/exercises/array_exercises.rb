def nil_array(number)
  arr = []
  number.to_i.times {|i| arr.push(nil)}
  arr
    # return an array containing `nil` the given number of times
end

def first_element(array)
  array[0]
  # return the first element of the array
end

def third_element(array)
  array[2]
  # return the third element of the array
end

def last_three_elements(array)
  if array.length >= 3 
    array[-3..-1]
  else 
    array
  end
  # return the last 3 elements of the array
end

def add_element(array)
  array.push(23)
  # add an element (of any value) to the array
end

def remove_last_element(array)
  # Step 1: remove the last element from the array
  array.pop

  # Step 2: return the array (because Step 1 returns the value of the element removed)
  array
end

def remove_first_three_elements(array)
  # Step 1: remove the first three elements
  if array.length >=3
    3.times {array.shift}
    else
      array = []
    end

  # Step 2: return the array (because Step 1 returns the values of the elements removed)
  array
end

def array_concatenation(original, additional)
  original.concat(additional)# return an array adding the original and additional array together
end

def array_difference(original, comparison)
  original - comparison # return an array of elements from the original array that are not in the comparison array
end

def empty_array?(array)
  array.empty?
end

def reverse(array)
  array.reverse
  # return the reverse of the array
end

def array_length(array)
  array.length
  # return the length of the array
end

def include?(array, value)
  array.include?(value)
  # return true if the array includes the value
end

def join(array, separator)
  array.join("#{separator}")
  # return the result of joining the array with the separator
end
