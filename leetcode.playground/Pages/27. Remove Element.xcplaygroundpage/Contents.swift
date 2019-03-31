class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        for j in 0..<nums.count {
            if nums[i] == val {
                if nums[j] != val {
                    (nums[i],nums[j]) = (nums[j],nums[i])
                    i += 1
                }
            }else {
                i += 1
            }
        }
        return i
    }
}
var nums:[Int] = []
Solution().removeElement(&nums, 2)
nums

