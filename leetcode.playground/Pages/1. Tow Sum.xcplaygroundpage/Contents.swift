class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var tmp:[Int:Int] = [:]
        for (i,element) in nums.enumerated() {
            if let j = tmp[target-element] {
                return [j,i]
            }else {
                tmp[element] = i
            }
        }
        
        return []
    }
}
Solution().twoSum([-100,2,3,4,5,6,7,8,9], 6)

