class BST
  include Enumerable

  attr_reader :data
  attr_accessor :left, :right
  def initialize(data)
    @data = data
  end

  def insert(data)
    if data <= self.data
      if left.nil?
        self.left = BST.new(data)
      else
        self.left.insert(data)
      end
    else
      if self.right.nil?
        self.right = BST.new(data)
      else
        self.right.insert(data)
      end
    end
  end

  def each(&block)
    left.each(&block) if left
    yield self.data
    right.each(&block) if right
  end
end