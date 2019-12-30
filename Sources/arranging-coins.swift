import Foundation

class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        let base = Double(2 * n) + 0.25
        let root = base.squareRoot()
        return Int(floor(root - 0.5))
    }
}
