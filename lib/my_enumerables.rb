require "pry-byebug"
module Enumerable

  def my_each_with_index
    if block_given?
      i = 0
      while i < self.length
      el = self[i]
      yield(el, i)
      i += 1
      end
    end
    return self
  end

  def my_select
    sel = []
    if block_given?
      i = 0
      while i < self.length
      el = self[i]
      if yield(el) == true
      sel << self[i]
      end
      i += 1
      end
    end
    return sel
  end

  def my_all?
    is_true = false
    if block_given?
      i = 0
      while i < self.length
      el = self[i]
      yield(el) == true ? (is_true = true) : (is_true = false)
      i += 1
      end
    end
    return is_true
  end

  def my_any?
    is_true = false
    if block_given?
      i = 0
      while i < self.length
      el = self[i]
      yield(el) == true ? (is_true = true) : true
      i += 1
      end
    end
    return is_true
  end

  def my_none?
    is_false = true
    if block_given?
      i = 0
      while i < self.length
      el = self[i]
      yield(el) == true ? (is_false = false) : false
      i += 1
      end
    end
    return is_false
  end

  def my_count
    count = 0
    if block_given?
      i = 0
      while i < self.length
      el = self[i]
      yield(el) == true ? (count += 1) : true
      i += 1
      end
      return count
    end
    return self.length
  end

  def my_map
    map = []
    if block_given?
      i = 0
      while i < self.length
      el = self[i]
      map << yield(el)
      i += 1
      end
    return map
    end
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
    return sum
    end
  end

end
# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    if block_given?
      i = 0
      while i < self.length
      el = self[i]
      yield(el)
      i += 1
      end
    end
    return self
  end
end
