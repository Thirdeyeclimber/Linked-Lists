class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def infinite_loop?(list)
  tortoise = list.next_node
  hare = list.next_node

  until hare.nil?
    hare = hare.next_node
    return false if hare.nil?

    hare = hare.next_node
    tortoise = tortoise.next_node
    return true if hare == tortoise
  end
  return false
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(14, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(15, node3)
node5 = LinkedListNode.new(21, node4)
node6 = LinkedListNode.new(33, node5)
node7 = LinkedListNode.new(85, node6)
node8 = LinkedListNode.new(43, node7)
node9 = LinkedListNode.new(63, node8)

puts infinite_loop?(node9) # Should return false in the console

node1.next_node = node9 # Creates an infinite loop
puts infinite_loop?(node9) # Should Return true in the console