class BST

  attr_accessor :data, :left, :right

  def initialize(data, left = nil, right = nil)
    @data = data
  end

  def insert(int)

    if self.data >= int && self.left != nil
      self.left.insert(int)
    elsif self.data <= int && self.right != nil
      self.right.insert(int)
    end

    if self.data >= int && self.left == nil
      self.left = BST.new(int)
    elsif self.data <= int && self.right == nil
      self.right = BST.new(int)
    end

  end

  def each(&block)
    left.each(&block) if left
    block.call(data)
    right.each(&block) if right
  end

end
