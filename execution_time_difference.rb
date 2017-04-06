require 'byebug'

def my_min_p1(arr) # n*n = n^2
  min = nil

  arr.each do |num| #n
    new_arr = arr.dup
    new_arr.delete(num)
    min = num if new_arr.all? { |num2| num2 > num } #n
  end
  min
end

def my_min_p2(arr) #n
  min = arr.first
  arr.each do |num| #n
    min = num if num < min
  end
  min
end

def largest_contiguous_subsum_p1(arr)  # n* n^2 = n^3
  all_subs = []
  most = arr.first
  arr.each_index do |idx|     #n
    (idx..arr.length - 1).each do |idx2| #n
      all_subs << arr[idx..idx2]
    end
  end

  all_subs.each do |sub|    #n^2
    most = sub.reduce(:+) if sub.reduce(:+) > most #2n
  end

  most
end

def largest_contiguous_subsum_p2(arr) #n
  most = arr.first
  sum = 0

  arr.each_index do |idx|   #n
    most = arr[idx] if arr[idx] > most
    if (idx-1) >= 0
      if arr[idx - 1] < 0
        most = sum + arr[idx] if sum + arr[idx] > most
        sum = 0
      end
    end
    sum += arr[idx]
    most = sum if sum > most
  end

  most
end
