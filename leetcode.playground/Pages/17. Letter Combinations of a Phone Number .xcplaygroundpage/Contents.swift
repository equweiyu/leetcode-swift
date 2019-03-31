class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else { return [] }
        let template:[Character : [String]] = [
            "2":["a","b","c"],
            "3":["d","e","f"],
            "4":["g","h","i"],
            "5":["j","k","l"],
            "6":["m","n","o"],
            "7":["p","q","r","s"],
            "8":["t","u","v"],
            "9":["w","x","y","z"]
        ]
        let arr = Array(digits.characters).flatMap({ template[$0]})
        guard !arr.isEmpty else { return [] }
        return arr.reduce([""], {(a,b) in a.flatMap({n in b.map({m in n+m})})})
    }
}

Solution().letterCombinations("")