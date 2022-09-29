class Solution {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        return arr.enumerated().map { ($0.offset, abs($0.element-x)) }.sorted(by: {$0.1 < $1.1} ).map { arr[$0.0] }[..<k].sorted()
    }
}
