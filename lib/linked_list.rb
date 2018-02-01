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
# binding.pry

  def to_string
    current_node = @head
    family_string = "The #{current_node.surname} family"

    if @head == nil
     "There are no families"
    else
     until current_node.next_node == nil #each iteration adds a string with
       current_node = current_node.next_node #corresponding surname concatenated
       family_string += ", followed by the #{current_node.surname} family"
     end
      family_string #returns final string
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

  def insert(position, surname)
    @count += 1
    if @head == nil
      @head = Node.new(surname)
    else new_node = @head
      @head = Node.new(surname)
      @head.next_node = new_node
    end
  end
end
#append logic
#start with head
# is next node nil?
# if answer is yes
#   place node here
# if answer is no
#   go to next node
# repeat to line 24
