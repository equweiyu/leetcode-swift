class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
//
//        if nums.count == 0 {
//            return 1
//        }
//        if nums.count == 1 {
//            if nums[0] == 1 {
//                return 2
//            }else {
//                return 1
//            }
//        }
        var r = 1
        while nums.contains(r) {
            r += 1
        }
        return r
    }
}

Solution.init().firstMissingPositive([1,2,3,5])



