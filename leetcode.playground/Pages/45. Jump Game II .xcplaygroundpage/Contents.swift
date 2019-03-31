class Solution {
    func jump(_ nums: [Int]) -> Int {
        
        guard nums.count > 1 else {
            return 0
        }
        
        
        var lower = 1
        var upper = nums[0]
        var rounds = 1

        
        while true {
            if lower <= nums.count - 1 && upper >= nums.count - 1 {
                return rounds
            }else {
                var nextUpper = 0
                for i in lower..<upper+1 {
                    nextUpper = max(nums[i] + i, nextUpper)
                }
                lower = upper + 1
                upper = nextUpper
                rounds += 1
                
            }
        }
    }
}
let arr = [1,1,3]
Solution.init().jump([8,4,3,4,0,0,9,7,2,3,5,7,3,1,1,5,1,8,6,1,1,6,1,1,8,0,4])

