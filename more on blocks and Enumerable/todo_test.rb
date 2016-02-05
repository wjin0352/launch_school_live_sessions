require 'minitest/autorun'
require 'minitest/reporters'

require_relative 'todo'
MiniTest::Reporters.use!

class TodoTest < MiniTest::Unit::TestCase
  def test_todo_empty
    list = TodoList.new
    assert_equal(list.empty?, true)
  end

  def test_todo_1
    list = TodoList.new
    list << "Buy milk"
    assert_equal(list.size, 1)
  end

  def test_todo_1_message
    list = TodoList.new
    list << "Buy milk"
    assert_equal(list.first, "Buy milk")
  end

  def test_todo_each
    list = TodoList.new
    list << "Clean room"
    list << "Attend live session"

    new_array = []
    list.each { |todo| new_array << todo }

    assert_equal(new_array, ["Clean room", "Attend live session"])
  end

  def test_each_return_value
    list = TodoList.new
    list << "Clean room"
    list << "Attend live session"

    new_array = []
    ret_val = list.each{ |todo| new_array << todo }

    assert_equal(list, ret_val)
  end

  def test_todo_any_buy
    list = TodoList.new
    list << "Buy milk"
    list << "Clean room"
    list << "Attend live session"

    has_buy = list.any? { |todo| todo =~ /^Buy/ }

    assert_equal(true, has_buy)
  end

  def test_todo_select
    list = TodoList.new
    list << "Buy milk"
    list << "Clean room"
    list << "Attend live session"

    buy_list = list.select { |todo| todo =~ /^Buy/ }

    assert_equal(["Buy milk"], buy_list)
  end
end
