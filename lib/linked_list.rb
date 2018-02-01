require_relative "node"
require 'pry'

class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
    #@current
  end

  def append(surname)
    current_node = @head

    # count is always increasing
    @count +=1
    # always creating new node with new surname
    # node = Node.new(surname) #
    if @head == nil #  ivar not needed with attr reader within class
      @head = Node.new(surname) # assign head to new node on 17
    else
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(surname)
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
    if @head.next_node == nil
     "The #{@head.surname} Family"
    else
     "The #{@head.surname} Family, followed by the #{@head.next_node.surname} Family."
    end
  end

  def prepend(surname)
    @count += 1
    if @head == nil
      @head = Node.new(surname)
    else first_node = @head
      @head = Node.new(surname)
      @head.next_node = first_node
    end
  end
end
# binding.pry
