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
    current_node = @head
    @count +=1

    if @head == nil
      @head = Node.new(surname)
    else
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(surname)
    end
  end

  #do not know method to add to the string
  #also not sure how to += the string 

  def to_string
    current_node = @head
    family_string = "The #{surname} family,"
    if current_node == nil
     "There are no families"
    else
     until current_node.next_node == nil

      end
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

#append logic
#start with head
# is next node nil?
# if answer is yes
#   place node here
# if answer is no
#   go to next node
# repeat to line 24
