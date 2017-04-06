def bad_two_sum?(arr, target)
  arr.each_with_index do |num, idx|
    arr.each_with_index do |num2, idx2|
      next if idx == idx2
      return true if num + num2 == target
    end
  end
  false
end
