# Exercise 4: you are given an array of numbers (e.g. [-10, 2, 3, -2, 0, 5, -15]). Find the largest sum of
# contiguous numbers in the array. Note that there might be more than one set of contiguous numbers, which
# in that case you must take the maximum of all such sets. An array that contains no contiguous sets of
# numbers should just return the largest number in the array.
#
# Example: [-10, 2, 3, -2, 0, 5, -15] should return a sum of 5

def largest_sum_contiguous(numbers)
  sorted_numbers = numbers.sort
  largest_sum(sorted_numbers).max
end

def largest_sum(sorted_numbers)
  sums = []
  current_sum = sorted_numbers[0]
  
  for i in 1..sorted_numbers.size - 1
    if sorted_numbers[i] - sorted_numbers[i-1] > 1
      sums.push(current_sum)
      current_sum = sorted_numbers[i]
    else
      current_sum += sorted_numbers[i]
    end
  end

  sums.push(current_sum)
  sums
end
