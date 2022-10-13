class Solution {
    func largestPerimeter(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted {
            $0 > $1
        }
        for i in 0...sortedNums.count-3 {
            if (sortedNums[i] < sortedNums[i+1] + sortedNums[i+2]) { 
                return sortedNums[i] + sortedNums[i+1] + sortedNums[i+2]
            }
        }
        return 0
    }
}
