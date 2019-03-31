class Solution {
    
    func generateParenthesis(_ n: Int) -> [String] {
        if n < 1 {
            return [""]
        }else {
            
            var result:[String] = []
            
            for i in 0..<n {
                let l = generateParenthesis(i)
                let r = generateParenthesis(n-1-i)
                let res = l.map({"("+$0+")"}).flatMap({m in r.map({n in m + n})})
                result = result + res
            }
            
            return result
        }
    }
}
Solution().generateParenthesis(3)
