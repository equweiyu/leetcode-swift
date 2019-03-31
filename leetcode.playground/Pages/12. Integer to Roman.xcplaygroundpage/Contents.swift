class Solution {
    func intToRoman(_ num: Int) -> String {
        if num > 0 && num < 4000 {
            let a = num/1000
            let b = num%1000/100
            let c = num/10%10
            let d = num%10
            var str = ""
            str = str + Array(repeating: "M", count: a).reduce("", +)
            let block = { (n:Int,one:String,five:String,ten:String) -> String in
                if n < 4 {
                    return Array(repeating: one, count: n).reduce("", +)
                }else if n == 4 {
                    return one + five
                }else if n < 9 {
                    return Array(repeating: one, count: n-5).reduce(five, +)
                }else if n == 9 {
                    return one + ten
                }else {
                    return ""
                }
            }
            str = str + block(b, "C", "D","M")
            str = str + block(c, "X", "L","C")
            str = str + block(d, "I", "V","X")
            return str
        }else {
            return ""
        }
    }
}

let num = 1980
Solution().intToRoman(num)