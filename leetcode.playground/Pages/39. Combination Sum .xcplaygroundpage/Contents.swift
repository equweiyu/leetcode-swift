class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let s = candidates.sorted()
        return combinationSumStart(0, s, target)
    }
    
    func combinationSumStart(_ start:Int, _ candidates: [Int], _ target: Int) -> [[Int]] {
        var res:[[Int]] = []
        if start >= candidates.count {
            return res
        }
        
        for i in start..<candidates.count {
            
            if target < candidates[i] {
                return res
            }
            
            for j in 1..<target/candidates[i] + 1 {
                
                let t = Array.init(repeating: candidates[i], count: j)
                
                let m = target - j*candidates[i]
                
                if m == 0 {
                    res.append(t)
                }else {
                    let r = combinationSumStart(i+1, candidates, target-j*candidates[i]).map({$0 + t})
                    if r.count > 0 {
                        res += r
                    }
                }

            }
            
            
        }
        
        return res
    }
}
Solution.init().combinationSum([2,3,6,7], 7)

//Solution.init().combinationSum([7], 7)






