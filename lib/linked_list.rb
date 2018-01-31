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
    # count is always increasing
    @count +=1
    # always creating new node with new surname
    node = Node.new(surname) #
    if head == nil #  ivar not needed with attr reader within class
      @head = node # assign head to new node on 17
    else
      head.next_node = node #incorrect with multiple nodes will need to iterate
    end
    #start with head
    # is next node nil?
    # if answer is yes
    #   place node here
    # if answer is no
    #   go to next node
    # repeat to line 24
  end

  def to_string
     "The #{@head.surname} Family"
     binding.pry
  end
end
