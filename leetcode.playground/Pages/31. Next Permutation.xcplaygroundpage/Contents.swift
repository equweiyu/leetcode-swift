class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        if nums.count <= 2 {
            nums.reverse()
        }else {
            var k = nums.count - 1
            
            while k >= 0 {
                
                if k == 0 {
                    nums.reverse()
                }else {
                    if nums[k-1] < nums[k] {
                        
                        
                        var j = nums.count - 1
                        
                        while j >= k {
                            
                            if nums[j] > nums[k-1] {
                                (nums[j],nums[k-1]) = (nums[k-1],nums[j])
                                
                                
                                
                                nums[k..<nums.count].sort()
                                break
                            }
                            
                            j -= 1
                        }
                        break
                    }
                }
                k -= 1
            }
        }
    }
    
}
var arr = [1,3,2]
Solution().nextPermutation(&arr)
arr
