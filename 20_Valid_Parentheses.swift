class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [String] = []

        for letter in s {
            let l = String(letter)
            if l == "(" || l == "{" || l == "[" {
                stack.insert(l, at: stack.count)
            }
            else {
                if l == ")" {
                    if stack.last != "(" {
                        return false
                    } else {
                        stack.popLast()
                    }
                } else if l == "}" {
                    if stack.last != "{" {
                        return false
                    } else {
                        stack.popLast()
                    }
                } else if l == "]" {
                    if stack.last != "[" {
                        return false
                    } else {
                        stack.popLast()
                    }
                }
            }
        }
        return stack.isEmpty
    }
}
