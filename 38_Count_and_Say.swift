class Solution {
    func countAndSay(_ n: Int) -> String {
        return count(1, n, "1")
    }
    
    func count(_ c: Int, _ n: Int,_ s: String) -> String {
        if c == n {
            return s
        }
        let arr = Array(s)
        var prev = arr[0]
        var times = 1
        var say = ""
        if arr.count > 1 {
            for x in 1..<arr.count {
                if arr[x] == prev {
                    times += 1
                    if x == arr.count - 1 {
                        say = "\(say)\(times)\(prev)"
                    }
                } else {
                    say = "\(say)\(times)\(prev)"
                    times = 1
                    prev = arr[x]
                    if x == arr.count - 1 {
                        say = "\(say)1\(arr[x])"
                    }
                }
            }
        } else {
            say = "11"
        }
        
        return count(c+1, n, say)
    }
}
