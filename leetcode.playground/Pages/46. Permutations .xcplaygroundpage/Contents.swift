class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        if nums.count == 0 {
            return []
        }
        if nums.count == 1 {
            return [nums]
        }
        var res:[[Int]] = [[nums[0]]]
        
        for i in 1..<nums.count {
            
            let count = res[0].count
            var tmp:[[Int]] = []
            
            for j in 0..<count + 1 {
                for k in 0..<res.count {
                    let b:[Int] = res[k][0..<j] + [nums[i]] + res[k][j..<count]
                    tmp.append(b)
                }
            }
            res = tmp
        }
        return res
    }
}
Solution.init().permute([1,2,3,4])