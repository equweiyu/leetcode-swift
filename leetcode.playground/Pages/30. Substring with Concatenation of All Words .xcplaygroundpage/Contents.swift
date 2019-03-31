class Solution {
    
    func match(_ s:String, _ words:[String], start:Int) -> Bool {
        let arr = Array(s.characters)
        
        
        
        
        
        return false
    }
    
    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
        if let l:Int = words.first?.characters.count,l>0 {
            var res:[Int] = []
            for i in 0..<s.characters.count {
                if match(s, words, start: i) {
                    res.append(i)
                }
            }
            return res
        }else {
            return []
        }
    }
}


