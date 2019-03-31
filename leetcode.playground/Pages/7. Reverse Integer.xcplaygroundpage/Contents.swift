class Solution {
    func reverse(_ x: Int) -> Int {
        
        if x >= Int(Int32.max) {
            return 0
        }
        var res = 0
        var t = x
        
        while (t != 0) {
            res = t%10 + res*10
            t = t/10
        }
        
        if res >= Int(Int32.max) || res <= Int(Int32.min) {
            return 0
        }else {
            return res
        }
        
//        if res >= Int(Int32.max) {
//            return 0
//        }else {
//            return res
//        }
    }
}

//Solution().reverse(12)

Solution().reverse(12)





