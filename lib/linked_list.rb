require_relative "node"
require 'pry'

class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(surname)
    @count +=1
    node = Node.new(surname)
    @head = Node.new(surname)
  end

  def to_string
     "The #{@head.surname} Family"
  end
end
