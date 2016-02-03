require 'pry'

class Node
  attr_accessor :value, :next
  # next is a reserved word so use next by always using a caller

  def initialize(val)
    @value = val
  end
end

class List
  include Enumerable

  def initialize(*objs)
    nodes = []
    objs.each {|obj| nodes << Node.new(obj)}

    @tail = @head = nil

    return if nodes.empty?

    @head = nodes.first
    @tail = nodes[nodes.length - 1]

    nodes.each_with_index do |node, idx|
      node.next = nodes[idx+1] unless idx == nodes.length - 1
    end
  end

  def empty?
    @tail.nil? && @head.nil?
  end

  def to_s
    "#{self.head}, #{self.tail}"
  end

  def append(node)
    if empty?
      @tail = @head = node
    else
      @tail.next = node
      @tail = node
    end
  end
  alias_method :<<, :append

  def prepend(node)
    if empty?
      @head = @tail = node
    else
      node.next = @head
      @head = node
    end
  end

  # there has to be a looping construct, its not an array or a hash
  def display
    each { |node| puts node.value }
  end

  def select
    # new_list = List.new
    # each do |node|
    #   new_list << node if yield(node)
    # end
    # new_list
    List.new(super)
  end

  def each
    current_node = @head
    loop do
      yield(current_node)
      if current_node == @tail
        break
      else
        current_node = current_node.next
      end
    end
  end
end
# -----------

# node1 = Node.new(1)
# node2 = Node.new(2)
# node0 = Node.new(0)

list = List.new(1, 2, 0)

# list.<< node1
# list.<< node2
# list << node0

list.display

new_list = list.select {|node| node.value.odd?}

puts "New list: "
puts new_list.class
new_list.display
