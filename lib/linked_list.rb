require_relative "node"

class LinkedList
  attr_reader :head

  def initialize
    @head      = nil
  end

  def append(surname)
    node = Node.new(surname)
  end
end
