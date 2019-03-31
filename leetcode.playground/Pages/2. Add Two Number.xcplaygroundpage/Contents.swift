public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    
//    func addTwoNumbers2(_ l1: ListNode?, _ l2: ListNode?, _ num:Int) -> ListNode? {
//        if l1==nil && l2==nil && num == 0 {
//            return nil
//        }else {
//            let sum = (l1?.val ?? 0)  + (l2?.val ?? 0) + num
//            let nextval = sum/10
//            let val = sum%10
//            let node:ListNode? = ListNode(val)
//            if nextval == 0 && l1?.next == nil && l2?.next == nil {
//                node?.next = nil
//            }else {
//                node?.next = addTwoNumbers2(l1?.next, l2?.next, nextval)
//            }
//            return node
//        }
//    }
    
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        var t1 = l1
        var t2 = l2
        let n = t1!.val + t2!.val
        let res = ListNode(n%10)
        let tmp = n/10
        
        var r:ListNode? = nil
        
        while true {
            
            let val = (t1?.val ?? 0) + (t2?.val ?? 0) + tmp
            
            
            t1 = l1?.next
            t2 = l2?.next
        }
        
        
        
        
        return nil
//        return addTwoNumbers2(l1, l2, 0)
    }
}


let l1 = ListNode(2)
l1.next = ListNode(4)
l1.next?.next = ListNode(3)



let l2 = ListNode(5)
l2.next = ListNode(6)
l2.next?.next = ListNode(4)

var node = Solution.init().addTwoNumbers(l1, l2)

while let n = node {
    print(n.val)
    node = n.next
}


