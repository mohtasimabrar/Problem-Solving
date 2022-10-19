class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var dict = [String : Int]()
        
        for word in words {
            if var times = dict[word]  {
                dict[word] = times + 1
            } else {
                dict[word] = 1
            }
        }
        
        let sortedDict  = dict.sorted { 
            $0.value > $1.value 
        }.sorted {
            if $0.value == $1.value { return $0.key < $1.key }
            return $0.value > $1.value
        }.prefix(k).map { $0.0 }

        return sortedDict
    }
}
