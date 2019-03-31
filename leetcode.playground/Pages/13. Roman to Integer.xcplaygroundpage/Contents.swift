class Solution {
    
    func romanToInt(_ s: String) -> Int {
        let d:[Character:Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        let charToInt:((Character)->Int) = { c in d[c] ?? 0 }
        let arr = Array(s.characters)
        guard arr.count >= 1 else { return 0 }
        let nums = arr.map(charToInt)
        
        
        var res = nums[nums.count - 1]
        for (n1,n2) in zip(nums[0..<nums.count - 1], nums[1..<nums.count]) {
            if n1 < n2 {
                res = res - n1
            }else {
                res = res + n1
            }
        }
        return res
        
        
//        let num = zip(nums[0..<nums.count - 1], nums[1..<nums.count])
//            .map({ (n1,n2) in if n1 < n2 { return -n1 } else { return n1 } })
//            .reduce(nums[nums.count - 1], +)
//        return num
    }
}

let str = "DCXXI"
Solution().romanToInt(str)
