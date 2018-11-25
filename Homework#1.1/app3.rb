class TreeNode
  attr_accessor :left, :right, :value

  def initialize(params={})
    self.left = params[:left]
    self.right = params[:right]
    self.value = params[:value]
  end
end

root = TreeNode.new(
  value: 1,
  left: TreeNode.new(
    value: 2,
    left: TreeNode.new(
      value: 5
      ),
  ),
  right: TreeNode.new(
    value: 3
  ),
)

def pretty_print(node, queue=[node]) #BFS, от части гугл и помощь знакомых
  puts
  cnt = 1
  while !queue.empty?
    current = queue.shift
    queue << current.left unless current.left.nil?
    queue << current.right unless current.right.nil?
    print (current.nil? ? '. ' : "#{current.value} ")
    cnt += 1
    if Math.log2(cnt) % 1 == 0 #Это подсмотрел в гугле, оно делает переходы между уровнями дерева, в механизме не до конца разобрался
      puts
    end
  end
  puts
end

pretty_print(root)