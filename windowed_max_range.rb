require 'byebug'
def windowed_max_range(arr, window) # 2*n*n = 2n^2
  current_max_range = nil

  arr.each_index do |idx| #n
    break if idx + window > arr.length
    w = idx + window - 1
    max = arr[idx..w].max #n
    min = arr[idx..w].min #n
    current_max_range = (max - min) if current_max_range == nil
    current_max_range = (max - min) if current_max_range < (max - min)
  end
  current_max_range
end

class MyQueue
  def initialize
    @store = []
  end

  def enqueue(n)
    @store.unshift(n)
  end

  def dequeue
    @store.pop
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end

class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push
    @store.push
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end

class StackQueue
  def initialize

  end

  def enqueue

  end

  def dequeue

  end

  def size

  end

  def empty?

  end
end
