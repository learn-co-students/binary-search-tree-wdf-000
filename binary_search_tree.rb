class BST

  attr_accessor :data, :left, :right

  def initialize(data, left = nil, right = nil)
    @data = data
    @left = left
    @right = right
  end

  def insert(new_data)
    if new_data <= self.data
      if left.nil?
        self.left = BST.new(new_data)
      else
        self.left.insert(new_data)
      end
    else
      if self.right.nil?
        self.right = BST.new(new_data)
      else
        self.right.insert(new_data)
      end
    end
  end

  def each(&block)
    self.left.each(&block) if self.left
    block.call(data)
    self.right.each(&block) if self.right
  end

end
