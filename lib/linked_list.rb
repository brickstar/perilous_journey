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

  def to_string
    current_node = @head
    family_string = "The #{current_node.surname} family"

    if @head == nil
     "There are no families"
    else
     until current_node.next_node == nil
       current_node = current_node.next_node
       family_string += ", followed by the #{current_node.surname} family"
     end
      family_string
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
    current_node = @head
    if @head == nil
      @head = Node.new(surname)
    else new_node = @head
      @head = Node.new(surname)
      current_node.next_node = new_node
    end
  end
end
