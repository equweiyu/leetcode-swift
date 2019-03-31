class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        guard nums.count > 0 else {
            return 0
        }
        return searchInsert(nums, target, 0, nums.count-1)
    }
    
    func searchInsert(_ nums: [Int], _ target: Int,_ start:Int,_ end:Int) -> Int {

        if nums[start] >= target {
            return start
        }
        if nums[end] < target {
            return end + 1
        }
        if nums[end] == target {
            return end
        }
        
        
        if end - start <= 1 {
            return end
        }
        
        let i = (start + end)/2
        
        let v = nums[i]
        
        
        
        if v > target {
            return searchInsert(nums, target, start, i)
        }else if v < target {
            return searchInsert(nums, target, i, end)
        }else {
            return i
        }
        
    }
}



Solution.init().searchInsert([1,3,5,6], 0)
