require "./lib/linked_list.rb" #path
require "./lib/node.rb"
require "minitest/autorun"
require "minitest/pride"

class LinkedListTest < MiniTest::Test
  def test_linked_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list #object
    assert_equal 0, list.count #variable is an object - copy of linkedlist
  end                          #keep track of what variable is where assigned

  def test_head_is_equal_to_nil
    list = LinkedList.new

    assert_nil @head
  end

  def test_list_head_equal_to_nil
    list = LinkedList.new

    assert_nil list.head #nil default value for @head
  end

  def test_it_can_append_to_empty_list
    list = LinkedList.new
    node = list.append("West") #returns node it creates

    assert_equal "West", node.surname #did it set return correctly
    assert_equal node, list.head #make sure head is pointed to new node
    assert_nil list.head.next_node #all true with append
  end

  def test_next_node_after_head_is_nil
    list = LinkedList.new
    node = list.append("West")

    assert_nil list.head.next_node
  end

  def test_list_can_count
    list = LinkedList.new
    node = list.append("West")

    assert_equal 1, list.count
  end

  def test_list_returns_a_string
    skip
    list = LinkedList.new
    node = list.append("West")

    assert_equal "The West Family", list.to_string
  end

  def test_it_can_append_twice
    list = LinkedList.new
    list.append("Rhodes")
    assert_nil list.head.next_node
    assert_equal 1, list.count

    list.append("Hardy")
    assert_equal 2, list.count
    assert_equal "Hardy", list.head.next_node.surname
  end

  def test_it_can_append_five_times
    # skip
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    list.append("Brooks")
    list.append("Garth")
    list.append("Cletus")

    assert_equal 5, list.count
  end

  def test_it_returns_a_string_with_multiple_nodes
    skip
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")


    assert_equal "The Rhodes Family, followed by the Hardy Family.", list.to_string
  end

  def test_it_can_prepend
    # skip
    list = LinkedList.new
    list.append("Brooks")
    list.append("Henderson")
    list.prepend("McKinney")

    assert_equal "McKinney", list.head.surname
    assert_equal "Brooks", list.head.next_node.surname
    assert_equal 3, list.count
  end

  def test_it_can_insert
    list = LinkedList.new
  end
end
