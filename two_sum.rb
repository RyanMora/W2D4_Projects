
def bad_two_sum?(arr, target) # n*n = n^2
  arr.each_with_index do |num, idx| #n
    arr.each_with_index do |num2, idx2| #n
      next if idx == idx2
      return true if num + num2 == target
    end
  end
  false
end

def okay_two_sum?(arr, target) #n*n = n^2
  nums = arr.sort
  nums.each do |num| #n
    eq_target = target - num
    if nums.include?(eq_target) #n
      return true
    end
  end
  false
end

def two_sum?(arr, target)  #n + n = 2n???????
  store_hash = Hash.new(0)
  arr.each do |num| #n
    store_hash[num] += 1
  end
  store_hash.each_key do |k| #n
    return true if store_hash[target - k] > 0
  end
  false
end
