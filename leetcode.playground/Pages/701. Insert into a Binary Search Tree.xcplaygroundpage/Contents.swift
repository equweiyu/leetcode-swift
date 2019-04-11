
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


indirect enum BST {
    case leaf
    case node(BST,Int,BST)
    
    init() {
        self = .leaf
    }
    init(_ value: Int) {
        self = .node(.leaf,value,.leaf)
    }
}

extension TreeNode: CustomStringConvertible {
    public var description: String {
        return "(\(left?.description ?? "_"),\(val),\(right?.description ?? "_"))"
    }
}

extension BST: CustomStringConvertible {
    var description: String {
        
        switch self {
        case .leaf:
            return "_"
        case let .node(l, v, r):
            
            return "(\(l.description),\(v),\(r.description))"
        }
        
    }
}


class Solution {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        
        guard let rootNode = root  else {
            return TreeNode(val)
        }
        if val < rootNode.val {
            rootNode.left = insertIntoBST(rootNode.left, val)
        } else {
            rootNode.right = insertIntoBST(rootNode.right, val)
        }
        return root
    }
    func insertIntoBST(_ root:BST, _ val:Int) -> BST {
        switch root {
        case .leaf:
            return BST(val)
        case let .node(left, value, right):
            if val < value {
                return BST.node(insertIntoBST(left, val), value, right)
            } else {
                return BST.node(left, value, insertIntoBST(right, val))
            }
        }
    }
}
func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    
    guard let rootNode = root  else {
        return TreeNode(val)
    }
    if val < rootNode.val {
        rootNode.left = insertIntoBST(rootNode.left, val)
    } else {
        rootNode.right = insertIntoBST(rootNode.right, val)
    }
    return root
}
func insertIntoBST(_ root:BST, _ val:Int) -> BST {
    switch root {
    case .leaf:
        return BST(val)
    case let .node(left, value, right):
        if val < value {
            return BST.node(insertIntoBST(left, val), value, right)
        } else {
            return BST.node(left, value, insertIntoBST(right, val))
        }
    }
}

let node = TreeNode(4)
node.left = TreeNode(2)
node.right = TreeNode(7)

let res = Solution().insertIntoBST(node, 5)
res

let node2:BST = .node(.node(.init(1), 2, .init(3)), 4, .init(7))
let res2 = Solution().insertIntoBST(node2, 5)
res2
print(res2)
