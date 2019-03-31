class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        var intArr:[Int] = []
        var t = x
        while t != 0 {
            intArr.append(t%10)
            t = t/10
        }
        for i in 0..<intArr.count/2 {
            if intArr[i] != intArr[intArr.count - 1 - i] {
                return false
            }
        }
        return true
    }
}

Solution().isPalindrome(-2147447412)


