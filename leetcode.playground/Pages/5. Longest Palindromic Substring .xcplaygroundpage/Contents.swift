class Solution {
    func longestPalindrome(_ s: String) -> String {
        
        var res = ""
        var maxL = 0
        let chars = Array(s.characters)
        
        for i in 0..<chars.count{
            
            if (i+1)<chars.count && chars[i] == chars[i+1] {
                for j in 0..<min(i+1,chars.count - i - 1) {
                    
                    
                    if chars[i - j] == chars[i + 1 + j] {
                        
                        let r = chars[i-j..<i+j+1+1]
                        
                        if r.count > maxL {
                            maxL = r.count
                            
                            res = r.reduce("", { (s, c) -> String in
                                return s + String(c)
                            })
                        }
                    }else {
                        break
                    }
                    
                }
            }
            
            
            for j in 0..<min(i+1,chars.count - i) {
                
                if chars[i - j] == chars[i + j] {
                    
                    let r = chars[i-j..<i+j+1]
                    
                    if r.count > maxL {
                        maxL = r.count
                        
                        res = r.reduce("", { (s, c) -> String in
                            return s + String(c)
                        })
                    }
                }else {
                    break
                }
            }
        }
        return res
    }
}

Solution().longestPalindrome("babad")
Solution().longestPalindrome("cbbd")
