public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        if let h = head {
            var temp:[ListNode] = [h]
            while let nextNode = temp.last?.next {
                temp.append(nextNode)
            }
            if n > temp.count {
                return head
            }else if n == temp.count{
                return temp[0].next
            }else {
                temp[temp.count - n - 1].next = temp[temp.count - n - 1].next?.next
                return head
            }
            return nil
        }else {
            return nil
        }
    }
}

let node = ListNode(1)
node.next = ListNode(2)
node.next?.next = ListNode(3)
node.next?.next?.next = ListNode(4)
node.next?.next?.next?.next = ListNode(5)

let r = Solution().removeNthFromEnd(node, 2)

var rn = r

while let v = rn?.val {
    rn = rn?.next
    print(v)
}