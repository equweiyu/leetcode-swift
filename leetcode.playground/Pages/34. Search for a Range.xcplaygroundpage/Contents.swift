class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard nums.count > 0 else {
            return [-1,-1]
        }
        return searchRange(nums, target, 0, nums.count-1)
    }
    
    
    func searchRange(_ nums: [Int], _ target: Int, _ start:Int,_ end:Int) -> [Int] {
        
        if nums[start] > target {
            return [-1,-1]
        }
        if nums[end] < target {
            return [-1,-1]
        }
        if nums[start] == target && nums[end] == target {
            return [start,end]
        }
        
        if nums[start] == target {
            var tmp = start
            
            while tmp + 1 < end {
                if nums[tmp + 1] == target {
                    tmp += 1
                }else {
                    break
                }
            }
            return [start,tmp]
            
            
            
        }
        if nums[end] == target {
            var tmp = end
            while tmp - 1 > start {
                if nums[tmp - 1] == target {
                    tmp -= 1
                }else {
                    break
                }
            }
            return [tmp,end]
        }
        
        if end - start <= 1 {
            return [-1,-1]
        }
        
        let i = (start + end)/2
        
        let v = nums[i]
        
        if v > target {
            return searchRange(nums, target, start, i)
        }else if v < target {
            return searchRange(nums, target, i, end)
        }else {
            var tmpStart = i
            var tmpEnd = i

            while tmpStart - 1 > start {
                if nums[tmpStart - 1] == target {
                    tmpStart -= 1
                }else {
                    break
                }
            }
            while tmpEnd + 1 < end {
                if nums[tmpEnd + 1] == target {
                    tmpEnd += 1
                }else {
                    break
                }
            }
            
            return [tmpStart,tmpEnd]

        }
    }
}

Solution.init().searchRange([5,7,7,8,8,10], 8)

