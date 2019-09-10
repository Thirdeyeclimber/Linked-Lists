
# Linked list Class
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

# Adding to Linked list
node1 = LinkedListNode.new(27)
node2 = LinkedListNode.new(89, node1)
node3 = LinkedListNode.new(22, node2)

# Print function
def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end


# Stack Class
class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    return print "nil\n" if @data.nil?
    print "#{@data.value}\n"
    @data = @data.next_node
  end
end

# Create a new stack
stack = Stack.new

# Adding to stack
stack.push("one")
stack.push("two")
stack.push("three")
# Iterative approach
3.times do |i|
  stack.push(i + 1)
end


# Removing from stack
stack.pop 
stack.pop
stack.pop
# Iterative approach
4.times do
  stack.pop
end 

puts "---------------"


def reverse_list(list)
  stack = Stack.new
  while list
    stack.push(list.value)
    list = list.next_node
  end
  return stack.data
end

print_values(node3)
puts "---------------"
revlist = reverse_list(node3)
print_values(revlist)
