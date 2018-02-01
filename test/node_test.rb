require "minitest/autorun"
require "minitest/pride"
require 'pry'
require "./lib/node.rb"

class NodeTest < MiniTest::Test

  def test_a_node_can_be_created
    node = Node.new("Burke")

    assert_instance_of Node, node
  end

  def test_it_has_attribute_surname
    node = Node.new("Burke")

    assert_equal "Burke", node.surname
  end

  def test_attr_next_node_equals_nil
    node = Node.new("Burke")

    assert_equal nil, node.next_node
  end
end
