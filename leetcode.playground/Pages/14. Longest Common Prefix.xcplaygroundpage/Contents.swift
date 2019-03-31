class Solution {
    
    func commonPrefix(s1:String,s2:String) -> String {
        let arr1 = Array(s1.characters)
        let arr2 = Array(s2.characters)
        
        var i = 0
        var res = ""
        
        while i < arr1.count && i < arr2.count {
            if arr1[i] == arr2[i] {
                res = res + String(arr1[i])
            }else {
                break
            }
            i = i + 1
        }
        
        
        return res
        
        
    }
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.count == 0 {
            return ""
        }else if strs.count == 1 {
            return strs[0]
        }else {
            var res = strs[0]
            for s in strs[1..<strs.count] {
                res = commonPrefix(s1: res, s2: s)
            }
            return res
        }
    }
}



Solution().longestCommonPrefix(["a","b"])