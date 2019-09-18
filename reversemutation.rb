class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(list, previous=nil)
  if list
    next_node = list.next_node
    list.next_node = previous
    reverse_list(next_node, list)
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(19)
node2 = LinkedListNode.new(32, node1)
node3 = LinkedListNode.new(24, node2)
node4 = LinkedListNode.new(62, node3)
node5 = LinkedListNode.new(32, node4)
node6 = LinkedListNode.new(24, node5)
node7 = LinkedListNode.new(62, node6)

print_values(node7)
puts "---------"
reverse_list(node7)
print_values(node1)