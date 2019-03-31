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
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard let head = head else {
            return nil
        }
        if k <= 1 {
            return head
        }
        
        var i = k - 1
        
        var reverse:ListNode = ListNode(head.val)
        let f = reverse
        
        var tmp = head
        
        while (i>0) {
            if let next = tmp.next {
                let n = ListNode(next.val)
                n.next = reverse
                reverse = n
                tmp = next
                i -= 1
            }else {
               return head
            }
        }
        f.next = reverseKGroup(tmp.next, k)
        return reverse
    }
}
let n = ListNode([1,2,3,4])
let r = Solution().reverseKGroup(n, 2)
r
