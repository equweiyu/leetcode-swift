class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        if nums.count == 0 {
            return -1
        }
        
        
        
        if nums[0] == target {
            return 0
        }else if nums[0] < target {
            for i in 0..<nums.count {
                if nums[i] == target {
                    return i
                }
            }
            
        }else {
            for i in 0..<nums.count {
                if nums[nums.count-1-i] == target {
                    return nums.count-1-i
                }
            }
        }
        return -1
    }
}
Solution.init().search([4,5,6,7,1,2,3], 1)