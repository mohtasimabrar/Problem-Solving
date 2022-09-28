class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        var n: Int = x < 0 ? x * -1 : x
        
        var reverse: Int = 0

        while (n != 0) {
            reverse = reverse * 10
            reverse = reverse + n % 10
            n = n / 10
        }
        
        if x == reverse {
            return true
        }
        return false
    }
}
