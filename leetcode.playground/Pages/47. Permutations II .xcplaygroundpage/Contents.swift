class Solution {
    
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        if nums.count == 0 {
            return []
        }
        if nums.count == 1 {
            return [nums]
        }
        
        let sortNums = nums.sorted()
        
        var res:[[Int]] = [[sortNums[0]]]
        
        for i in 1..<sortNums.count {
            //+ nums[i]
            
            let count = res[0].count
            var tmp:[[Int]] = []
            
            for j in 0..<count + 1 {
                for k in 0..<res.count {
                    let b:[Int] = res[k][0..<j] + [sortNums[i]] + res[k][j..<count]
                    if !tmp.contains(where: { $0==b }) {
                        tmp.append(b)
                    }
                }
            }
            res = tmp
        }
        return res
    }
}
Solution().permuteUnique([1,1])
