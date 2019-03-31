public class ListNode:CustomStringConvertible,CustomDebugStringConvertible {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    func push(_ next:Int) -> ListNode {
        self.next = ListNode(next)
        return self
    }
    public var description: String {
        if let n = self.next {
            return val.description + "->" + n.description
        }else {
            return val.description
        }
    }
    public var debugDescription: String{
        return description
    }
    
    
}
extension ListNode {
    convenience init?(_ nums:[Int]) {
        if nums.isEmpty {
            return nil
        }else {
            self.init(nums[0])
            if nums.count > 1 {
                var t = nums
                t.removeFirst()
                self.next = ListNode(t)
            }else {
                self.next = nil
            }
        }
    }
    public var nums:[Int] {
        if let n = self.next {
            return [val] + n.nums
        }else {
            return [val]
        }
    }
}


class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }
        guard let res = head.next else {
            return head
        }
        
        let next = res.next
        res.next = head
        head.next = swapPairs(next)
        
        return res
        

    }
}

let node = ListNode([1,2,3,4])

Solution().swapPairs(node)