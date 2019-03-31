/*:
 Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.
 */

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
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

        
        guard let n1 = l1 else { return l2 }
        guard let n2 = l2 else { return l1 }

        if n1.val < n2.val {
            l1?.next = mergeTwoLists(l1?.next, l2)
            return l1
        }else {
            l2?.next = mergeTwoLists(l1, l2?.next)
            return l2
        }
    }
    
}

let l1 = ListNode([1,3,5,7,9])
let l2 = ListNode([2,4,6,8,10])
let r = Solution().mergeTwoLists(l1, l2)
