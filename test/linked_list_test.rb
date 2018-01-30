require "./lib/linked_list.rb"
require "./lib/node.rb"
require "minitest/autorun"
require "minitest/pride"

class LinkedListTest < MiniTest::Test
  def test_linked_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
    assert_nil list.head
  end

  def test_it_can_append
    list = LinkedList.new
    node = list.append("West")

    assert_equal "West", node.surname
    assert_instance_of LinkedList, list
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
    list = LinkedList.new
    node = list.append("West")

    assert_equal "The West Family", list.to_string
  end
end
