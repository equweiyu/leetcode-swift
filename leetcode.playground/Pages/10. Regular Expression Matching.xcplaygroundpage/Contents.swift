//import Foundation
class Solution {
    
    func simpleArr(_ arr: [Character] ) -> [Character] {
        
        if arr.count < 4 {
            return arr
        }else {
            
            
            if arr[1] == "*"  {
                if arr[3] == "*" {
                    
                }else {
                    
                }
                
            }else {
                return [arr[0]] + simpleArr(Array(arr[1..<arr.count]))
            }
            
            
            
            return arr

        }
        
        
        
    }
    
    func simple(_ s:String) -> String {

        
        let arr = Array(s.characters)

        if arr.count < 4 {
            return s
        }else {
            for i in 0..<arr.count {

            }
            
            
            return s
        }

        
    }
    
    func isMatch(_ s: String, _ p: String) -> Bool {
        let simp = simple(p)
        
        if s == simp { return true }
        if simp == ".*" {return true}
        
        
        
        let scs = Array(s.characters)
        let pcs = Array(p.characters)
        
        
        
        if pcs.count < 2 {
            return (scs.count == 1) && pcs.count == 1  && (pcs[0] == ".")
        }else {
            if pcs[1] == "*" {
                
                if pcs.count == 2 {
                    return (pcs[0] == ".") || scs.reduce(true, { r,c in r && c==pcs[0] })
                }else {
                    
                    let nextP = pcs[2..<pcs.count].reduce("", {$0 + String($1)})
                    if scs.count == 0 {
                        return isMatch(s, nextP)
                    }
                    
                    if pcs[0] == "." {
                        
                        
                        
                        return isMatch("", nextP) || (0..<scs.count).reduce(false, {r,i in
                            let nextS = scs[i..<scs.count].reduce("", {$0 + String($1)})
                            return r || isMatch(nextS, nextP)
                        })
                    }else {
                        
                        
                        for i in 0..<scs.count {
                            
                            if i == 0 || scs[i-1] == pcs[0] {
                                let nextS = scs[i..<scs.count].reduce("", {$0 + String($1)})
                                
                                let r = isMatch(nextS, nextP)
                                
                                if r {
                                    return true
                                }
                            }else {
                                break
                            }
                        }
                        
                        
                        return false
                    }
                    
                }
            }else {
                
                if scs.count >= 1 && (scs[0] == pcs[0] || pcs[0] == ".") {
                    let nextS = scs[1..<scs.count].reduce("", {$0 + String($1)})
                    let nextP = pcs[1..<pcs.count].reduce("", {$0 + String($1)})
                    
                    return isMatch(nextS,nextP)
                }else {
                    return false
                }
            }
        }
    }
}

Solution().isMatch("aaaaaaaaaaaaab", "a*c")
//Solution().isMatch("b", ".*a*")
"aaaaaaaaaaaaab"
"a*a*a*a*a*a*a*a*a*a*c"



