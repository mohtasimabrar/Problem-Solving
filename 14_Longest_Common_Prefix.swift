class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var lcp = ""
        let shortest = strs.min()!
        let words = strs.filter(){ $0 != shortest }
        
        for (index, element) in shortest.enumerated() {
            for word in words {
                let idx = word.index(word.startIndex, offsetBy: index)
                if word[idx] != element {
                    return lcp
                }
            }
            lcp = lcp + String(element)
        }
        return lcp
    }
}
