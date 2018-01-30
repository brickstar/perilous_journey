require "./lib/linked_list.rb"
require "minitest/autorun"
require "minitest/pride"
require 'pry'

class LinkedListTest < MiniTest::Test
  def test_linked_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_it_can_append
    list = LinkedList.new
    node = list.append("West")

    # assert_equal nil, list.head
    # assert_instance_of Node, list.append("West")#instance of node *see below
    assert_equal "West", node.surname
    assert_instance_of LinkedList, list
  end



end

# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList @head=nil #45678904567>
# > list.head
# => nil
# > list.append("West")
# => <Node @surname="West" @next_node=nil #5678904567890>
# > list
# => <LinkedList @head=<Node @surname="West" ... > #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "The West family"
