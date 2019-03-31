class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        if nums.count < 2 {
            return nums.count
        }
        
        var i = 0
        
        for j in 1..<nums.count {
            if nums[i] < nums[j] {
                nums[i+1] = nums[j]
                i += 1
            }
        }
        
        return i + 1
    }
}

var nums:[Int] = [1,2,2,2,2,3,5,7,8,9,11,111,1111,1111,1111,1111]
Solution().removeDuplicates(&nums)
nums
