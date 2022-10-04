
// https://leetcode.com/problems/minimum-time-to-make-rope-colorful/

class Solution {
    func minCost(_ colors: String, _ neededTime: [Int]) -> Int {
        var result = 0
        let colorsArray = Array(colors)
        var needTime = neededTime
        if neededTime.count == 1 { return 0 }
        for i in 1..<colorsArray.count {
            if colorsArray[i] == colorsArray[i-1] {
                result += min(needTime[i], needTime[i-1])
                needTime[i] = max(needTime[i], needTime[i-1])
            }
        }

        return result
    }
}
