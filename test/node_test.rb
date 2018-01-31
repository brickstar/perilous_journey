require "./lib/node.rb"
require "minitest/autorun"
require "minitest/pride"
require 'pry'

class NodeTest < MiniTest::Test

  def test_a_node_can_be_created
    node = Node.new("Burke")

    assert_instance_of Node, node
    assert_equal "Burke", node.surname
    assert_equal nil, node.next_node
  end
end
