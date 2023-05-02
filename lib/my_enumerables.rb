module Enumerable
  # Your code goes here

  def my_each_with_index
    if block_given?
      i = 0
      self.my_each do |el| 
        yield(el, i)
        i += 1
      end
    end
    self
  end

  def my_select
    array = []
    if block_given?
      self.my_each do |el|
        if yield(el) == true
          array << el
        end
      end
    array
    end
  end

  def my_all?
    if block_given?
      self.my_each do |el|
        if yield(el)
          true
        else
          return false
        end
      end
      true
    end
  end

  def my_any?
    if block_given?
      self.my_each do |el|
        if yield(el)
          return true
        end
      end
      false
    end
  end

  def my_none?
    if block_given?
      self.my_each do |el|
        if yield(el)
          return false
        end
      end
      true
    end
  end

  def my_count
    count = 0
    if block_given?
      self.my_each do |element|
        count += 1 if yield(element)
      end
    else
      count = self.length
    end
    count
  end

  def my_map
    array = []
    if block_given?
      self.my_each do |el|
        array << yield(el)
      end
    end
    array
  end
  
  def my_inject(initial)
    sum = initial
    if block_given?
      i = 0
      while i < self.length
        el = self[i]
        sum = yield(el, sum)
        i += 1
      end
    end
    sum
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here

  def my_each
    if block_given?
      i = 0
      while i < self.length
        el = self[i]
        i += 1
        yield(el)
      end
    end
    self
  end
end
