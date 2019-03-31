class Solution {
    func solveNQueens(_ n: Int) -> [[String]] {
        if n == 1 {
            return [["Q"]]
        }
        return []
    }
}
Solution.init().solveNQueens(4)