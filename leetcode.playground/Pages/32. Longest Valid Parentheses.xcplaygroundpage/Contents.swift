class Solution {
    func longestValidParentheses(_ s: String) -> Int {
        
        if s.isEmpty {
            return 0
        }
        let arr = Array(s.characters)
        
        var tmpArr:[Int] = []
        
        for i in 0..<arr.count {
            let c = arr[i]
            if c == "(" {
                tmpArr.append(-1)
            }
            if c == ")" {
                tmpArr.append(-2)
            }
        }

        var maxl = 0
        
        var j = 0
        
        while j < tmpArr.count {
            
            if j > 0 && tmpArr[j] == -2 {
                
                if tmpArr[j] == -2 {
                    if tmpArr[j-1] > 0 {
                        
                        if j-1 > 0 && tmpArr[j-2] == -1 {
                            let k = tmpArr[j-1] + 1
                            tmpArr.remove(at: j)
                            tmpArr.remove(at: j-1)
                            tmpArr.remove(at: j-2)
                            tmpArr.insert(k, at: j-2)
                            maxl = max(k, maxl)
                            j -= 1
                        }else {
                            j += 1
                        }
                        
                    }else if tmpArr[j-1] == -1 {
                        tmpArr.remove(at: j)
                        tmpArr.remove(at: j-1)
                        tmpArr.insert(1, at: j-1)
                        maxl = max(maxl, 1)
                    }else if tmpArr[j-1] == -2 {
                        j += 1
                    }
                    if j > 1 && tmpArr[j-1] > 0 && tmpArr[j-2] > 0 {
                        let k = tmpArr[j-1] + tmpArr[j-2]
                        tmpArr.remove(at: j-1)
                        tmpArr.remove(at: j-2)
                        tmpArr.insert(k, at: j-2)
                        maxl = max(maxl, k)
                        j -= 1
                    }
                }
            }else {
                j += 1
            }
        }
        return maxl * 2
    }
}

Solution().longestValidParentheses("()(()")
Solution().longestValidParentheses("()())")
Solution().longestValidParentheses("())()")
Solution().longestValidParentheses("(()()")

