class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        
        var dict = [String : Int]()
        let arr = Array(sentence)

        for i in arr {
            if dict["\(i)"] == nil {
                dict["\(i)"] = 1
            }
        }

        return dict.count == 26
    }
}
