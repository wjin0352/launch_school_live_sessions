# 01/17/2015 - more on blocks and Enumerable

class TodoList
  attr_accessor :todos

  def initialize
    @todos = []
  end

  def empty?
    todos.empty?
  end

  def <<(todo)
    todos << todo
  end

  def size
    todos.size
  end

  def first
    todos[0]
  end

  def each
    i = 0
    while i < todos.size
      yield(todos[i])
      i += 1
    end
    self
  end

  def any?
    is_any = false
    each do |todo|
      is_any = !!yield(todo)
      break if is_any
    end
    is_any
  end

  def select
    buy_list = []
    each do |todo|
      buy_list << todo if yield(todo)
    end
    buy_list
  end
end
