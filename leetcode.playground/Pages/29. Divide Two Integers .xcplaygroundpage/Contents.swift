class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        if divisor == 0 {
            return Int.max
        }
        var a = abs(dividend)
        let b = abs(divisor)
        
        if a < b {
            return 0
        }
        
        var res = 0
        
        while a >= b {
            
            var m = b
            var t = 0
            while a > m << 1 {
                m <<= 1
                t += 1
            }
            while a >= m {
                a -= m
                res += 1<<t
            }
        }
        
        if dividend < 0 {
            res = -res
        }
        if divisor < 0 {
            res = -res
        }
        if res < Int(Int32.min) || res > Int(Int32.max) {
            return Int(Int32.max)
        }
        return res
    }
}
Solution().divide(2147483647, 2)
Solution().divide(-2147483648, -1)
