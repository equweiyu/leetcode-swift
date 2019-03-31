/*:
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
*/

class Solution {
    
    func isValid(_ s: String) -> Bool {
        let arr = Array(s.characters)
        
        var temp:[Character] = []
        
        for (i,c) in arr.enumerated() {
            
            if let last = temp.last,(last == "[" && c == "]") || (last == "(" && c == ")") || (last == "{" && c == "}") {
                temp.removeLast()
            }else {
                temp.append(c)
            }
        }
        return temp.isEmpty
    }
}
let str = "[{}]"
Solution().isValid(str)
