class Solution {
    func countAndSay(_ n: Int) -> String {
        if n < 1 {
            return ""
        }else if n == 1 {
            return "1"
        }else {
            let nums = countAndSay(n-1).characters.flatMap({Int($0.description)})

            var res:String = ""
            var key:Int = -1
            var value:Int = 0
            
            for n in nums {
                if key == -1 {
                    key = n
                    value = 1
                }else if key == n {
                    value += 1
                }else {
                    res += "\(value)\(key)"
                    key = n
                    value = 1
                }
            }
            res += "\(value)\(key)"
            
            return res
        }
    }
}

Solution.init().countAndSay(6)