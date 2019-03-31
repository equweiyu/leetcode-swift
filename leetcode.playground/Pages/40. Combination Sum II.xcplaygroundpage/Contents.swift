class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var dict:[Int:Int] = [:]
        for c in candidates {
            dict[c] = (dict[c] ?? 0) + 1
        }
        let s = dict.keys.sorted()
        return combinationSum2Start(0, s, target , dict)
    }
    func combinationSum2Start(_ start:Int, _ candidates: [Int], _ target: Int, _ dict:[Int:Int]) -> [[Int]] {
        var res:[[Int]] = []
        if start >= candidates.count {
            return res
        }
        for i in start..<candidates.count {
            if target < candidates[i] {
                return res
            }
            
            for j in 1..<(min( target/candidates[i],dict[candidates[i]]!) + 1) {
                let t = Array.init(repeating: candidates[i], count: j)
                let m = target - j*candidates[i]
                if m == 0 {
                    res.append(t)
                }else {
                    let r = combinationSum2Start(i+1, candidates, target-j*candidates[i],dict).map({$0 + t})
                    if r.count > 0 {
                        res += r
                    }
                }
            }
        }
        return res
    }
}

Solution.init().combinationSum2([10, 1, 2, 7, 6, 1, 5], 8)

